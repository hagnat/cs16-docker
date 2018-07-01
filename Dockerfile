FROM jarlefosen/cs16

COPY config/server.cfg    cstrike/server.cfg
COPY config/motd.html     cstrike/motd.txt
COPY config/mapcycle.txt  cstrike/mapcycle.txt

ADD maps /steam/cs16/cstrike/maps

ENV SERVER_NAME "Leaseweb's CS Server"
ENV RCON_PW     ""
ENV START_MAP   "de_dust2"

EXPOSE 26900
EXPOSE 27015
EXPOSE 27020

