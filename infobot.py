
import mysql.connector
import discord
from app.main import app
# -*- coding: utf-8 -*-


client = discord.Client()

config = {
  'user': "bd8577e8e19d81",
  'password': "57efec97",
  'host': "us-cdbr-east-03.cleardb.com",
  'database': "heroku_59f1f15e195609b",
  'raise_on_warnings':True,
  'charset':'utf8',
  'collation':'utf8_unicode_ci'
  #'auth_plugin': 'mysql_native_password'
}


def quitarTildes(cadena):
    cadena = cadena.lower()
    cadena = cadena.replace("á", "a")
    cadena = cadena.replace("é", "e")
    cadena = cadena.replace("í", "i")
    cadena = cadena.replace("ó", "o")
    cadena = cadena.replace("ú", "u")
    return cadena

@client.event
async def on_message(message):
    try:
        cnx = mysql.connector.connect(**config)
        cursor = cnx.cursor()
        print("MySQL Connection Created Successfully")
    except Exception as e:
        print(e)
        print("Exitting...")
        exit()

    messageContent = quitarTildes(message.content)

    data = []
    query = ""
    if message.author == client.user:
        return

    elif "llam" in messageContent and "te" in messageContent:
        await message.channel.send("¡Saludos! ¡Mi nombre es InfoBot!")
        return

    elif "llam" in messageContent and "me" in messageContent:
        await message.channel.send("¡Saludos! Tu eres "+ str(message.author))
        return

    elif messageContent == "hola":
        await message.channel.send("¡Saludos! ¡Bienvenido al servidor!")
        return

    #---------------------------------RECTORADO-------------------------------
    elif "vicerector" in messageContent:
        query="select vicerector from autoridades"
        await message.channel.send("El vicerectorado para el periodo actual está a cargo de:")

    elif "rector" in messageContent or "autori" in messageContent:
        query="select rector from autoridades"
        await message.channel.send("El rectorado para el periodo actual está a cargo de:")
    #---------------------------------FADCOM---------------------------------------
    elif "subdecan" in messageContent and ("fadcom" in messageContent or "grafi" in messageContent or "produc" in messageContent or "diseñ" in messageContent or "comunica" in messageContent or "edcom" in messageContent):
        query = "select subdecano from fadcom"
        await message.channel.send("El subdecanato de FADCOM está a cargo de:")

    elif "decan" in messageContent and ("fadcom" in messageContent or "grafi" in messageContent or "produc" in messageContent or "diseñ" in messageContent or "comunica" in messageContent or "edcom" in messageContent):
        query = "select decano from fadcom"
        await message.channel.send("El decanato de FADCOM está a cargo de:")

    elif "coordina" in messageContent and ("fadcom" in messageContent or "grafi" in messageContent or "produc" in messageContent or "diseñ" in messageContent or "comunica" in messageContent or "edcom" in messageContent) and "comunitarias" in messageContent :
        query = "select coordPractCom from fadcom"
        await message.channel.send("Los coordinadores de practicas comunitarias de FADCOM son:")

    elif "coordina" in messageContent and ("fadcom" in messageContent or "grafi" in messageContent or "produc" in messageContent or "diseñ" in messageContent or "comunica" in messageContent or "edcom" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent) or ("practicas" in messageContent and "fadcom" in messageContent):
        query = "select coordPractEmp from fadcom"
        await message.channel.send("Los coordinadores de practicas empresariales de FADCOM son:")

    elif "coordina" in messageContent and ("fadcom" in messageContent or "grafi" in messageContent or "produc" in messageContent or "diseñ" in messageContent or "comunica" in messageContent or "edcom" in messageContent):
        query = "select coordCarrera from fadcom"
        await message.channel.send("Los coordinadores de carrera de FADCOM son:")
    #---------------------------FCV---------------------------------------------------------
    elif "subdecan" in messageContent and ("fcv" in messageContent or "biolo" in messageContent or "agri" in messageContent or "nutri" in messageContent):
        query = "select subdecano from fcv"
        await message.channel.send("EL subdecanato de FCV está a cargo de:")

    elif "decan" in messageContent and ("fcv" in messageContent or "biolo" in messageContent or "agri" in messageContent or "nutri" in messageContent):
        query = "select decano from fcv"
        await message.channel.send("El decanato de FCV está a cargo de:")

    elif "coordina" in messageContent and ("fcv" in messageContent or "biolo" in messageContent or "agri" in messageContent or "nutri" in messageContent) and "comunitarias" in messageContent:
        query = "select coordPractCom from fcv"
        await message.channel.send("Los coordinadores de practicas comunitarias de FCV son:")

    elif ("coordina" in messageContent and ("fcv" in messageContent or "biolo" in messageContent or "agri" in messageContent or "nutri" in messageContent)) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent) or ("practicas" in messageContent and "fcv" in messageContent):
        query = "select coordPractEmp from fcv"
        await message.channel.send("Los coordinadores de practicas empresariales de FCV son:")

    elif "coordina" in messageContent and ("fcv" in messageContent or "biolo" in messageContent or "agri" in messageContent or "nutri" in messageContent):
        query = "select coordCarrera from fcv"
        await message.channel.send("Los coordinadores de carrera de FCV son:")
    # ---------------------------FCNM---------------------------------------------------------
    elif "subdecan" in messageContent and ("fcnm" in messageContent or "estadisti" in messageContent or "logisti" in messageContent or "quimic" in messageContent or "matema" in messageContent):
        query = "select subdecano from fcnm"
        await message.channel.send("El subdecanato de FCNM está a cargo de:")

    elif "decan" in messageContent and ("fcnm" in messageContent or "estadisti" in messageContent or "logisti" in messageContent or "quimic" in messageContent or "matema" in messageContent):
        query = "select decano from fcnm"
        await message.channel.send("El decanato de FCNM está a cargo de:")

    elif "coordina" in messageContent and ("fcnm" in messageContent or "estadisti" in messageContent or "logisti" in messageContent or "quimic" in messageContent or "matema" in messageContent) and "comunitarias" in messageContent:
        query = "select coordPractCom from fcnm"
        await message.channel.send("Los coordinadores de practicas comunitarias de FCNM son:")

    elif "coordina" in messageContent and ("fcnm" in messageContent or "estadisti" in messageContent or "logisti" in messageContent or "quimic" in messageContent or "matema" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent)or ("practicas" in messageContent and "fcnm" in messageContent):
        query = "select coordPractEmp from fcnm"
        await message.channel.send("Los coordinadores de practicas empresariales de FCNM son:")

    elif "coordina" in messageContent and ("fcnm" in messageContent or "estadisti" in messageContent or "logisti" in messageContent or "quimic" in messageContent or "matema" in messageContent):
        query = "select coordCarrera from fcnm"
        await message.channel.send("Los coordinadores de carrera de FCNM son:")
    # ---------------------------FCSH---------------------------------------------------------
    elif "subdecan" in messageContent and ("fcsh" in messageContent or "economi" in messageContent or "administra" in messageContent or "auditor" in messageContent or "turismo" in messageContent or "arqueolog" in messageContent):
        query = "select subdecano from fcsh"
        await message.channel.send("El subdecanato de FCSH está a cargo de:")

    elif "decan" in messageContent and ("fcsh" in messageContent or "economi" in messageContent or "administra" in messageContent or "auditor" in messageContent or "turismo" in messageContent or "arqueolog" in messageContent):
        query = "select decano from fcsh"
        await message.channel.send("El decanato de FCSH está a cargo de:")

    elif "coordina" in messageContent and ("fcsh" in messageContent or "economi" in messageContent or "administra" in messageContent or "auditor" in messageContent or "turismo" in messageContent or "arqueolog" in messageContent) and "comunitarias" in messageContent:
        query = "select coordPractCom from fcsh"
        await message.channel.send("Los coordinadores de practicas comunitarias de FCSH son:")

    elif "coordina" in messageContent and ("fcsh" in messageContent or "economi" in messageContent or "administra" in messageContent or "auditor" in messageContent or "turismo" in messageContent or "arqueolog" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent) or ("practicas" in messageContent and "fcsh" in messageContent):
        query = "select coordPractEmp from fcsh"
        await message.channel.send("Los coordinadores de practicas empresariales de FCSH son:")

    elif "coordina" in messageContent and ("fcsh" in messageContent or "economi" in messageContent or "administra" in messageContent or "auditor" in messageContent or "turismo" in messageContent or "arqueolog" in messageContent):
        query = "select coordCarrera from fcsh"
        await message.channel.send("Los coordinadores de carrera de FCSH son:")
    # ---------------------------FICT---------------------------------------------------------
    elif "subdecan" in messageContent and ("fict" in messageContent or "geolog" in messageContent or "civil" in messageContent or "minas" in messageContent or "petrol" in messageContent ):
        query = "select subdecano from fict"
        await message.channel.send("El subdecanato de FICT está a cargo de:")

    elif "decan" in messageContent and ("fict" in messageContent or "geolog" in messageContent or "civil" in messageContent or "minas" in messageContent or "petrol" in messageContent ):
        query = "select decano from fict"
        await message.channel.send("El decanato de FICT está a cargo de:")

    elif "coordina" in messageContent and ("fict" in messageContent or "geolog" in messageContent or "civil" in messageContent or "minas" in messageContent or "petrol" in messageContent ) and "comunitarias" in messageContent:
        query = "select coordPractCom from fict"
        await message.channel.send("Los coordinadores de practicas comunitarias de FICT son:")

    elif "coordina" in messageContent and ("fict" in messageContent or "geolog" in messageContent or "civil" in messageContent or "minas" in messageContent or "petrol" in messageContent ) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent) or ("practicas" in messageContent and "fict" in messageContent):
        query = "select coordPractEmp from fict"
        await message.channel.send("Los coordinadores de practicas empresariales de FICT son:")

    elif "coordina" in messageContent and ("fict" in messageContent or "geolog" in messageContent or "civil" in messageContent or "minas" in messageContent or "petrol" in messageContent ):
        query = "select coordCarrera from fict"
        await message.channel.send("Los coordinadores de carrera de FICT son:")
    # ---------------------------FIEC---------------------------------------------------------
    elif "subdecan" in messageContent and ("fiec" in messageContent or "computa" in messageContent or "electr" in messageContent or "tele" in messageContent):
        query = "select subdecano from fiec"
        await message.channel.send("El subdecanato de FIEC está a cargo de:")

    elif "decan" in messageContent and ("fiec" in messageContent or "computa" in messageContent or "electr" in messageContent or "tele" in messageContent):
        query = "select decano from fiec"
        await message.channel.send("El decanato de FIEC está a cargo de:")

    elif "coordina" in messageContent and ("fiec" in messageContent or "computa" in messageContent or "electr" in messageContent or "tele" in messageContent) and "comunitarias" in messageContent:
        query = "select coordPractCom from fiec"
        await message.channel.send("Los coordinadores de practicas comunitarias de FIEC son:")

    elif "coordina" in messageContent and ("fiec" in messageContent or "computa" in messageContent or "electr" in messageContent or "tele" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent) or ("practicas" in messageContent and "fiec" in messageContent):
        query = "select coordPractEmp from fiec"
        await message.channel.send("Los coordinadores de practicas empresariales de FIEC son:")

    elif "coordina" in messageContent and ("fiec" in messageContent or "computa" in messageContent or "electr" in messageContent or "tele" in messageContent):
        query = "select coordCarrera from fiec"
        await message.channel.send("Los coordinadores de carrera de FIEC son:")
    # ---------------------------FIMCP---------------------------------------------------------
    elif "subdecan" in messageContent and ("fimcp" in messageContent or "alimentos" in messageContent or "industrial" in messageContent or "mec" in messageContent or "materiales" in messageContent):
        query = "select subdecano from fimcp"
        await message.channel.send("El subdecanato de FIMCP está a cargo de:")

    elif "decan" in messageContent and ("fimcp" in messageContent or "alimentos" in messageContent or "industrial" in messageContent or "mec" in messageContent or "materiales" in messageContent):
        query = "select decano from fimcp"
        await message.channel.send("El decanato de FIMCP está a cargo de:")

    elif "coordina" in messageContent and ("fimcp" in messageContent or "alimentos" in messageContent or "industrial" in messageContent or "mec" in messageContent or "materiales" in messageContent) and "comunitarias" in messageContent:
        query = "select coordPractCom from fimcp"
        await message.channel.send("Los coordinadores de practicas comunitarias de FIMCP son:")

    elif "coordina" in messageContent and ("fimcp" in messageContent or "alimentos" in messageContent or "industrial" in messageContent or "mec" in messageContent or "materiales" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent) or ("practicas" in messageContent and "fimcp" in messageContent):
        query = "select coordPractEmp from fimcp"
        await message.channel.send("Los coordinadores de practicas empresariales de FIMCP son:")

    elif "coordina" in messageContent and ("fimcp" in messageContent or "alimentos" in messageContent or "industrial" in messageContent or "mec" in messageContent or "materiales" in messageContent):
        query = "select coordCarrera from fimcp"
        await message.channel.send("Los coordinadores de carrera de FIMCP son:")
    # ---------------------------FIMCM---------------------------------------------------------
    elif "subdecan" in messageContent and ("fimcm" in messageContent or "naval" in messageContent or "ocean" in messageContent or "acuicu" in messageContent or "mariti" in messageContent):
        query = "select subdecano from fimcm"
        await message.channel.send("El subdecanato de FIMCM está a cargo de:")

    elif "decan" in messageContent and ("fimcm" in messageContent or "naval" in messageContent or "ocean" in messageContent or "acuicu" in messageContent or "mariti" in messageContent):
        query = "select decano from fimcm"
        await message.channel.send("El decanato de FIMCM está a cargo de:")

    elif "coordina" in messageContent and ("fimcm" in messageContent or "naval" in messageContent or "ocean" in messageContent or "acuicu" in messageContent or "mariti" in messageContent) and "comunitarias" in messageContent:
        query = "select coordPractCom from fimcm"
        await message.channel.send("Los coordinadores de practicas comunitarias de FIMCM son:")

    elif "coordina" in messageContent and ("fimcm" in messageContent or "naval" in messageContent or "ocean" in messageContent or "acuicu" in messageContent or "mariti" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent) or ("practicas" in messageContent and "fimcm" in messageContent):
        query = "select coordPractEmp from fimcm"
        await message.channel.send("Los coordinadores de practicas empresariales de FIMCM son:")

    elif "coordina" in messageContent and ("fimcm" in messageContent or "naval" in messageContent or "ocean" in messageContent or "acuicu" in messageContent or "mariti" in messageContent):
        query = "select coordCarrera from fimcm"
        await message.channel.send("Los coordinadores de carrera de FIMCM son:")
    #------------------------------------Asistencia----------------------------------

    elif "asist" in messageContent or "justi" in messageContent :
        query = "select justificacion from registrosYMaterias"
        await message.channel.send("Justificación: ")

    elif "asist" in messageContent and "obliga" in messageContent or ("clase" in messageContent and "asist" in messageContent ):
        query = "select obligatoriedad from registrosYMaterias"
        await message.channel.send("Obligatoriedad: ")

    elif "falta" in messageContent :
        query = "select perderMateriaPorFaltas from registrosYMaterias"
        await message.channel.send("Justificación: ")

    # ------------------------------------Disciplina----------------------------------

    elif "deshon" in messageContent:
        query = "select deshonestidad from bienestar"
        await message.channel.send("Deshonestidad: ")

    elif "hon" in messageContent or "disciplin" in messageContent:
        query = "select disciplina from bienestar"
        await message.channel.send("Disciplina: ")

    elif "sancion" in messageContent:
        query = "select sanciones from bienestar"
        await message.channel.send("Sanciones: ")

    elif "infraccion" in messageContent:
        query = "select infracciones from bienestar"
        await message.channel.send("Infracciones: ")



    #--------------------------PAE----------------------------------
    elif "pae" in messageContent and "deud" in messageContent:
        query = "select registroPAEPagarDeudas from Pae"
        await message.channel.send("PAE: ")

    elif "pae" in messageContent and ("costo" in messageContent or "cuesta" in messageContent or "valor" in messageContent):
        query = "select valorMateriasPAE from Pae"
        await message.channel.send("PAE: ")

    elif "pae" in messageContent and "credit" in messageContent:
        query = "select cantidadCreditosOMateriasPAE from Pae"
        await message.channel.send("PAE: ")

    elif "pae" in messageContent and "solicit" in messageContent:
        query = "select procesoSolicitarMateriaPAE from Pae"
        await message.channel.send("PAE: ")

    elif "materia" in messageContent and "pae" in messageContent:
        query = "select materiasDisponiblesPAE from Pae"
        await message.channel.send("PAE: ")

    elif ("registr" in messageContent or "apli" in messageContent or "inscri" in messageContent) and "pae" in messageContent:
        query = "select procesoRegistroPAE from Pae"
        await message.channel.send("PAE: ")


    #-------------------------------deudas--------------------------------------------

    elif "segund" in messageContent and ("pag" in messageContent or "deud" in messageContent or "valor" in messageContent):
        query = "select valorMateriasSegundaMatricula from registrosYMaterias"
        await message.channel.send("segunda matricula: ")

    elif "prorroga" in messageContent and "deud" in messageContent:
        query = "select prorrogasDeudas from deudas"
        await message.channel.send("prorroga de deudas: ")

    elif "fecha" in messageContent and ("pag" in messageContent or "deud" in messageContent):
        await message.channel.send("La fecha limite para pagar tus deudas de valor aparece en el academico en la seccion de pagos.")
        return

    elif "deud" in messageContent and "no valor" in messageContent:
        query = "select EliminarOPagarDeudasDeNoValor from deudas"
        await message.channel.send("pago de deudas: ")

    elif "deud" in messageContent and "consejer" in messageContent:
        query = "select deudaConsejeriaAcademica from deudas"
        await message.channel.send("deudas de consejeria academica: ")

    elif "deud" in messageContent and "integrad" in messageContent:
        query = "select anularDeudaMateriaIntegradora from deudas"
        await message.channel.send("Para anular deudas de materia integradora: ")

    elif "pag" in messageContent:
        query = "select PagoDeudaSinAcercarseAVentanilla from deudas"
        await message.channel.send("pago de deudas: ")


    elif "pag" in messageContent and ("pag" in messageContent or "ver" in messageContent or "averigu" in messageContent or "enc" in messageContent):
        await message.channel.send("las deudas te aprecen en el academico en la seccion de pagos.")

    elif "deud" in messageContent:
        query = "select casosDeudaEnElSistema from deudas"
        await message.channel.send("causas de deudas: ")


    elif "coordinador" in messageContent :
        await message.channel.send("Debes ingresar la facultad o la carrera ;)")
        return

    # --------------------------------------pasantias----------------------------------

    elif ("pasant" in messageContent or "practi" in messageContent) and (
                    "convali" in messageContent) and ("trabaj" in messageContent or "labora" in messageContent):
        await message.channel.send("Pasantías: "
                                   "Si ya te encuentras laborando y deseas convalidar tus prácticas debes comunicarte con tu coordinador de practicas, y el te guiará en el proceso de convalidación.")
        return

    elif ("mesa" in messageContent or "mjrv" in messageContent) and ("comunitari" in messageContent or "vincula" in messageContent or "uvs" in messageContent):
        query = "select mesaPracticas from pasantias"
        await message.channel.send("Pasantías comunitarias: ")

    elif ("pasant" in messageContent or "practi" in messageContent or "comunitarias"  in messageContent) and (
                    "semestre" in messageContent or "carrera" in messageContent) and ("cuando" in messageContent or "recom" in messageContent):
        await message.channel.send("Las practicas puedes realizarlas cuando hayas alcanzado un minimo de conocimiento profesional, pero puedes consultar a tu consejero o al coordinador de practicas cuando es recomendable que apliques para realizar las practicas ")
        return

    elif ("pasant" in messageContent or "practi" in messageContent or "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent or "comunitari" in messageContent or "vincula" in messageContent or "uvs" in messageContent) and (
                    "registr" in messageContent or "matri" in messageContent or "apli" in messageContent or "inscri" in messageContent):
        query = "select registroPasantias from pasantias"
        await message.channel.send("Registro pasantías: ")


    elif "informe" in messageContent:
        query = "select informePasantias from pasantias"
        await message.channel.send("Informe pasantías: ")

    elif ("pasant" in messageContent or "practic" in messageContent) and "dura" in messageContent and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent):
        query = "select duracionPasantiasLaborales from pasantias"
        await message.channel.send("pasantias laborales: ")

    elif ("pasant" in messageContent or "practic" in messageContent) and (
            "cred" in messageContent or "hora" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent):
        query = "select horasyCreditosPasantiasLaborales from pasantias"
        await message.channel.send("pasantias laborales: ")

    elif ("pasant" in messageContent or "practic" in messageContent) and "obliga" in messageContent and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent):
        query = "select obligatoriedadPasantiasLaborales from pasantias"
        await message.channel.send("pasantias laborales: ")

    elif ("pasant" in messageContent or "practic" in messageContent) and (
            "requisi" in messageContent or "neces" in messageContent):
        query = "select requisitosPasantiasLaborales from pasantias"
        await message.channel.send("Requisitos para los dos tipos de pasantías: ")


    elif ("pasant" in messageContent or "practic" in messageContent) and (
            "repro" in messageContent or "perd" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent):
        query = "select reprobarPasantiasLaborales from pasantias"
        await message.channel.send("pasantias laborales: ")

    elif ("pasant" in messageContent or "practic" in messageContent) and ("conv" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent):
        query = "select convenioPasantiasLaborales from pasantias"
        await message.channel.send("pasantias laborales: ")


    elif ("pasant" in messageContent or "practic" in messageContent) and (
            "hace" in messageContent or "donde" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent):
        query = "select conseguirPasantiasLaborales from pasantias"
        await message.channel.send("pasantias laborales: ")

    elif ("pasant" in messageContent or "practic" in messageContent) and (
            "desarroll" in messageContent or "format" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent):
        query = "select formatoEnElDesarrolloPracticasPreprofesionales from pasantias"
        await message.channel.send("pasantias laborales: ")


    elif ("pasant" in messageContent or "practic" in messageContent) and "integra" in messageContent:
        query = "select pasantiasLaboralesDespuesDeMateriaIntegradora from pasantias"
        await message.channel.send("pasantias laborales: ")


    elif ("pasant" in messageContent or "practic" in messageContent) and "vacaci" in messageContent and "profesores" in messageContent:
        query = "select pasantiasLaboralesEnPeriodoDeVacacionesDeProfesores from pasantias"
        await message.channel.send("pasantias en vacaciones: ")

    elif ("pasant" in messageContent or "practic" in messageContent) and ("vacaci" in messageContent or "pao" in messageContent):
        query = "select pasantiasVacaciones from pasantias"
        await message.channel.send("pasantias en vacaciones: ")

    elif ("cred" in messageContent or "hora" in messageContent or "materia" in messageContent) and ("comunitari" in messageContent or "vincula" in messageContent or "uvs" in messageContent):
        query = "select horasyCreditosPracticasComunitarias from pasantias"
        await message.channel.send("pasantias comunitarias: ")

    elif ("pasant" in messageContent or "practic" in messageContent) and (
            "donde" in messageContent or "hacer" in messageContent) and ("comunitari" in messageContent or "vincula" in messageContent or "uvs" in messageContent):
        query = "select dondeRealizarPracticasComunitarias from pasantias"
        await message.channel.send("pasantias comunitarias: ")


    elif ("pasant" in messageContent or "practic" in messageContent) and "obje" in messageContent and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent):
        query = "select objetivoPasantiasLaborales from pasantias"
        await message.channel.send("pasantias laborales: ")

    elif ("pasant" in messageContent or "practic" in messageContent) and (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent) or (
            "profesional" in messageContent or "empresarial" in messageContent or "laboral" in messageContent):
        query = "select queEsPasantia from pasantias"
        await message.channel.send("pasantias laborales: ")

    elif ("comunitari" in messageContent or "vincula" in messageContent or "uvs" in messageContent):
        query = "select comunitarias from pasantias"
        await message.channel.send("Pasantias de servicio comunitarias: ")

    elif ("pasant" in messageContent or "practic" in messageContent):
        query = "select practicas from pasantias"
        await message.channel.send("Pasantias: ")

    #----------------------------------------ayudantia--------------------------------

    elif ("ayudant" in messageContent) and ("investig" in messageContent):
        query = "select queEsAyudantiaInvestigacion from pasantias"
        await message.channel.send("Ayudantia: ")

    elif ("ayudant" in messageContent) and ("docen" in messageContent or "prof" in messageContent):
        query = "select queEsAyudantiaDocencia from pasantias"
        await message.channel.send("Ayudantia: ")

    elif ("ayudant" in messageContent) and ("gesti" in messageContent):
        query = "select queEsAyudantiaGestion from pasantias"
        await message.channel.send("Ayudantia: ")

    elif ("ayudant" in messageContent) and ("prome" in messageContent or "nota" in messageContent or "calific" in messageContent):
        query = "select promedioMinimoParaAyudantia from pasantias"
        await message.channel.send("Ayudantia: ")

    elif ("ayudant" in messageContent):
        query = "select registroAAyudantia from pasantias"
        await message.channel.send("Ayudantia: ")

    elif "apr" in messageContent :
        query = "select aprobar from registrosYMaterias"
        await message.channel.send("Aprobación: ")

    elif "politicas" in messageContent :
        query = "select politicas from bienestar"
        await message.channel.send("Politicas de curso: ")

    #------------------------------------materias------------------------------------
    elif "tercer" in messageContent and ("matricula" in messageContent or "materia" in messageContent):
        query = "select procesoTerceraMatricula from registrosYMaterias"
        await message.channel.send("tercera matricula: ")

    elif "materia" in messageContent and "compleme" in messageContent:
        query = "select tomarMasMateriasComplementarias from registrosYMaterias"
        await message.channel.send("tomar mas materias complementarias: ")

    elif "segund" in messageContent and ("matricula" in messageContent or "materia" in messageContent or "vez" in messageContent):
        query = "select segundaMatricula from registrosYMaterias"
        await message.channel.send("segunda matricula: ")

    elif "dej" in messageContent and "estudi" in messageContent:
        query = "select consecuenciasDejarDeEstudiar from registrosYMaterias"
        await message.channel.send("consecuencias de dejar de estudiar: ")

    elif "hora" in messageContent and "clase" in messageContent and "profe" in messageContent:
        query = "select horarioClasesDeProfesor from pasantias"
        await message.channel.send("Horario clases de profesor: ")

    elif "hora" in messageContent and "clase" in messageContent or "calenda" in messageContent or "fecha" in messageContent or "clase" in messageContent:
        query = "select calendarioAcademico from registrosYMaterias"
        await message.channel.send("Calendario Académico: ")

    elif ("estud" in messageContent or "alumn" in messageContent) and "regul" in messageContent and (
                    "neces" in messageContent or "requi" in messageContent or "como" in messageContent or "credit" in messageContent):
        query = "select creditosParaSerEstudianteRegular from registrosYMaterias"
        await message.channel.send("Estudiante regular: ")

    elif ("estud" in messageContent or "alumn" in messageContent) and "regul" in messageContent :
        query = "select queSignificaEstudianteRegular from registrosYMaterias"
        await message.channel.send("Estudiante regular: ")

    elif ("perd" in messageContent or "pierd" in messageContent or "alumn" in messageContent or "estud" in messageContent) and "grat" in messageContent :
        query = "select cuandoPierdoGratuidad from registrosYMaterias"
        await message.channel.send("Perdida de la gratuidad: ")

    elif "materia" in messageContent and "integra" in messageContent and "cred" in messageContent:
        query = "select creditosMateriaIngregradora from registrosYMaterias"
        await message.channel.send("Materia integradora: ")

    elif ("registr" in messageContent or "inscr" in messageContent or"materia" in messageContent) and "integra" in messageContent :
        query = "select procesoRegistroMateriaIntegradora from registrosYMaterias"
        await message.channel.send("Registro materia integradora: ")

    elif ("matricu" in messageContent or "registr" in messageContent) and "especial" in messageContent:
        query = "select queEsMatriculaEspecial from registrosYMaterias"
        await message.channel.send("Matricula Especial: ")

    elif "anul" in messageContent and "semestr" in messageContent :
        query = "select anularElSemestre from registrosYMaterias"
        await message.channel.send("Anular el semestre: ")

    elif "conv" in messageContent and ("mater" in messageContent or "carre" in messageContent):
        query = "select procesoConvalidacionDeMateria from registrosYMaterias"
        await message.channel.send("Convalidar materias: ")

    elif ("anul" in messageContent or "elimin" in messageContent) and "mater" in messageContent and ("plazo" in messageContent or "tiempo" in messageContent):
        query = "select retirarUnaMateriaFueraDePlazo from registrosYMaterias"
        await message.channel.send("Anular materia: ")

    elif ("anul" in messageContent or "elimin" in messageContent)and "mater" in messageContent:
        query = "select cuandoPuedoAnularUnaMateria from registrosYMaterias"
        await message.channel.send("Anular materia: ")

    elif "cambi" in messageContent and "carrer" in messageContent :
        query = "select procesoParaCambioDeCarrera from registrosYMaterias"
        await message.channel.send("Cambio de carrera: ")

    elif ("registr" in messageContent or "credit" in messageContent) and "semestre" in messageContent:
        query = "select cantidadCreditosEnSemestre from registrosYMaterias"
        await message.channel.send("Registro: ")

    elif "extraordin" in messageContent :
        query = "select extraordinario from registrosYMaterias"
        await message.channel.send("Registro Extraordinario: ")

    elif "registr" in messageContent or "ordin" in messageContent:
        query = "select registro from registrosYMaterias"
        await message.channel.send("Registro: ")

    elif "titul" in messageContent :
        query = "select procesoParaObtenerTitulo from registrosYMaterias"
        await message.channel.send("Titularse: ")

    elif "recalif" in messageContent:
        query = "select recalificacion from registrosYMaterias"
        await message.channel.send("Recalificación: ")

    elif "califi" in messageContent :
        query = "select calificaciones from registrosYMaterias"
        await message.channel.send("calificaciones: ")

    elif "examen" in messageContent and ("anter" in messageContent or "pasad" in messageContent) or "inves" in messageContent or "regla" in messageContent:
        query = "select repositorio from bienestar"
        await message.channel.send("Repositorio: ")


    #--------------------------------------bienestar----------------------------------

    elif "deport" in messageContent or "canch" in messageContent:
        query = "select deportesParaPracticar from bienestar"
        await message.channel.send("deportes: ")

    elif "servici" in messageContent:
        query = "select serviciosOnline from bienestar"
        await message.channel.send("Servicios online: ")

    elif "consejo" in messageContent:
        query = "select autoridadesConsejoPolitecnico from administracion"
        await message.channel.send("Consejo politécnico: ")

    elif "beca" in messageContent:
        query = "select becas from registrosYMaterias"
        await message.channel.send("Becas: ")

    elif "transpor" in messageContent or "bus" in messageContent or "entr" in messageContent or "lleg" in messageContent or "sal" in messageContent:
        query = "select transporte from bienestar"
        await message.channel.send("Transporte: ")

    elif "gimnasi" in messageContent or "gym" in messageContent:
        query = "select gimnasio from bienestar"
        await message.channel.send("Gimnasio: ")

    elif "bienestar" in messageContent:
        query = "select bienestar from bienestar"
        await message.channel.send("UBEP: ")

    elif "mapa" in messageContent :
        await message.channel.send("Puedes revisar el mapa del campus Gustavo Galindo en el siguiente enlace: https://www.espol.edu.ec/es/mapa-del-campus ")
        return

    elif "prosperina" in messageContent or "gustavo" in messageContent or "galindo" in messageContent:
        query = "select campusProsperina from administracion"
        await message.channel.send("Campus Prosperina: ")

    elif "peñas" in messageContent:
        query = "select campusPenias from administracion"
        await message.channel.send("Campus Peñas: ")

    elif "correo" in messageContent:
        query = "select correo from bienestar"
        await message.channel.send("Correo Institucional: ")

    elif "decanato" in messageContent:
        await message.channel.send("Debes colocar la carrera o la facultad junto a la palabra 'decanato' ;)")
        return

    elif "gerencia" in messageContent:
        query = "select gerencia from administracion"
        await message.channel.send("Gerencia de Tecnologias y sistemas de información: ")

    elif "kayak" in messageContent:
        query = "select kayak from deportesEspol"
        await message.channel.send("Kayak: ")

    elif "futbol" in messageContent or "cancha" in messageContent:
        query = "select futbol from deportesEspol"
        await message.channel.send("Futbol: ")

    elif "ciclo" in messageContent or "cicli" in messageContent:
        query = "select ciclismo from deportesEspol"
        await message.channel.send("Ciclismo: ")

    elif "bici" in messageContent:
        await message.channel.send("Puedes prestar una bicicleta en las garitas de Biciespol. "
                                   "Una de ellas queda en la entrada del campus."
                                   "Y la otra se encuentra cerca al rectorado."
                                   "Para prestar una bicicleta solo debes presentar tu carnet de estudiante.")
        return

    elif "colis" in messageContent or "basket" in messageContent or "cesto" in messageContent or "pin" in messageContent or "mesa" in messageContent or "ball" in messageContent or "mano" in messageContent or "balon" in messageContent:
        query = "select volleyBasketTenisMesa from deportesEspol"
        await message.channel.send("Deportes en el coliseo: ")

    elif "cheer" in messageContent or "leader" in messageContent:
        query = "select cheerleader from deportesEspol"
        await message.channel.send("Cheerleader: ")

    elif "tenis" in messageContent:
        query = "select tenis from deportesEspol"
        await message.channel.send("Tenis: ")

    elif "ajedrez" in messageContent:
        query = "select ajedrez from deportesEspol"
        await message.channel.send("Ajedrez: ")

    elif "nata" in messageContent or "nad" in messageContent or "pisc" in messageContent:
        query = "select natacion from deportesEspol"
        await message.channel.send("Natacion: ")

    elif "yoga" in messageContent:
        query = "select yoga from deportesEspol"
        await message.channel.send("YOGA: ")

    elif "campus" in messageContent:
        await message.channel.send("Actualemnte la ESPOL cuenta con dos campus: \n"
                                   "Campus Prosperina: El campus Gustavo Galindo está ubicado al noroeste de la ciudad de Guayaquil en el centro del Bosque Protector Prosperina. La entrada a esta ciudad universitaria se encuentra en el km. 30½ de la Vía Perimetral de la ciudad. Tiene una extensión total aproximada de 724 hectáreas. \n"
                                   "Campus Peñas: El campus Peñas se encuentra ubicado en la dirección: Malecon y Loja en la ciudad de Guayaquil.")
        return


    #----------------------------------------------------servicios----------------------------------------------------------------

    elif "cenacad" in messageContent :
        query = "select cenacad from bienestar"
        await message.channel.send("Politicas de curso: ")

    elif "academico" in messageContent:
        query = "select academico from bienestar"
        await message.channel.send("academico: ")

    elif "comer" in messageContent or "comida" in messageContent:
        query = "select alimentos from bienestar"
        await message.channel.send("Alimentarse en ESPOL: ")

    elif "biblioteca" in messageContent or "libro" in messageContent:
        query = "select biblioteca from bienestar"
        await message.channel.send("Biblioteca: ")

    elif "consejer" in messageContent :
        query = "select consejerias from bienestar"
        await message.channel.send("Consejerias academicas: ")

    elif "medic" in messageContent :
        query = "select examenesMedicos from bienestar"
        await message.channel.send("Laboratorio Clínico: ")

    elif "club" in messageContent :
        query = "select clubes from bienestar"
        await message.channel.send("Clubes en ESPOL: ")

    elif "vaca" in messageContent:
        await message.channel.send("¿Ya quieres salir a vaciones? Bueno "
                                   "para consultar los dias de vacaciones y feriados puedes revisar el calendario academico: https://www.espol.edu.ec/es/vida-politecnica/calendario-academico ")
        return



    #--------------------------------------facultades-----------------------------------------------------------------------------

    elif "fiec" in messageContent or "computa" in messageContent or "electr" in messageContent or "tele" in messageContent:
        query = "select fiec from facultades"
        await message.channel.send("FIEC: ")

    elif "fadcom" in messageContent or "grafi" in messageContent or "produc" in messageContent or "diseñ" in messageContent or "comunica" in messageContent  or "edcom" in messageContent:
        query = "select fadcom from facultades"
        await message.channel.send("FADCOM: ")

    elif "fcv" in messageContent or "biolo" in messageContent or "agri" in messageContent or "nutri" in messageContent:
        query = "select fcv from facultades"
        await message.channel.send("FCV: ")

    elif "fcnm" in messageContent or "estadisti" in messageContent or "logisti" in messageContent or "quimic" in messageContent or "matema" in messageContent:
        query = "select fcnm from facultades"
        await message.channel.send("FCNM: ")

    elif "fcsh" in messageContent or "economi" in messageContent or "administra" in messageContent or "auditor" in messageContent or "turismo" in messageContent or "arqueolog" in messageContent:
        query = "select fcsh from facultades"
        await message.channel.send("FCSH: ")

    elif "fict" in messageContent or "geolog" in messageContent or "civil" in messageContent or "minas" in messageContent or "petrol" in messageContent :
        query = "select fict from facultades"
        await message.channel.send("FICT: ")

    elif "fimcp" in messageContent or "alimentos" in messageContent or "industrial" in messageContent or "mec" in messageContent or "materiales" in messageContent:
        query = "select fimcp from facultades"
        await message.channel.send("FIMCP: ")

    elif "fimcm" in messageContent or "naval" in messageContent or "ocean" in messageContent or "acuicu" in messageContent or "mariti" in messageContent:
        query = "select fimcm from facultades"
        await message.channel.send("FIMCM: ")

    elif "facultad" in messageContent :
        query = "select column_name from information_schema.columns where table_name = 'facultades' and table_schema = 'infodb'"
        await message.channel.send("Espere mientras se cargan las facultades ... \n"
                                   "facultades: ")

    #---------------------------------------Palabras claves----------------------------
    elif "pae" in messageContent:
        query = "select procesoRegistroPAE from Pae"
        await message.channel.send("PAE: ")

    elif "examen" in messageContent :
        query = "select examenes from registrosYMaterias"
        await message.channel.send("Exámenes: ")

    #----------------------------------------Help-------------------------------------
    elif messageContent=="fp help":
        await message.channel.send("Para consulta de autoridades ingrese el cargo y la facultad en abreviatura\n"
                                   "En caso de coordinadores tambien ingrese el tipo (carrera, empresariales o comunitarias)\n"
                                   "Para demas consultas simplemente realice preguntas al bot"
                                   )
        return

    try:
        cursor.execute(query)
        output = cursor.fetchall()
    except Exception as e:
        return str(e)



    if output == []:
        msg = await message.channel.send(embed=discord.Embed(description="Empty list returned", color=discord.Color.blue()))
        return
    if isinstance(output, list):
        for result in output:
            sub_data = []
            for x in result:
                sub_data.append(x)
            data.append(sub_data)
        #await message.channel.send(columnar(data, no_borders=False))
        for x in output:
            await message.channel.send(x[0])
        cursor.close()
        cnx.close()
        return
    else:
        msg = await message.channel.send("INFORMACIÓN NO DISPONIBLE")
        await msg.add_reaction("⚠️")
        await message.channel.send("Revisa que esté bien escrito por favor :D")
        cursor.close()
        cnx.close()
        return

@client.event
async def on_ready():
    print(f"Bot | Status:   Operational")
    print(f"Bot | ID:       {format(client.user.id)}")
    print(f"Bot | Name:     {format(client.user.name)}")
    print(f"Bot | Guilds:   {len(client.guilds)}")
    print(f"Bot Configurations set to:\n{config}")
    print(f"Bot is ready to use")
    #? Custom Activity
    await client.change_presence(activity=discord.Activity(type=discord.ActivityType.listening, name="fp help"))

client.run("") #token del bot



if __name__ == "__main__":
    app.run()
