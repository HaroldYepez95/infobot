
import discord
from app.main import app

# -*- coding: utf-8 -*-


client = discord.Client()

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

    messageContent = quitarTildes(message.content)

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


@client.event
async def on_ready():
    print(f"Bot | Status:   Operational")
    print(f"Bot | ID:       {format(client.user.id)}")
    print(f"Bot | Name:     {format(client.user.name)}")
    print(f"Bot | Guilds:   {len(client.guilds)}")
    print(f"Bot is ready to use")
    #? Custom Activity
    await client.change_presence(activity=discord.Activity(type=discord.ActivityType.listening, name="fp help"))

client.run(" ") #token del bot


if __name__ == "__main__":
    app.run()

