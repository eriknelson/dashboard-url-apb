FROM dymurray/apb-base:dashboard

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGRlbW8tYXBiCmRlc2NyaXB0aW9uOiBUaGlzIGlzIGEgc2FtcGxl\
IGFwcGxpY2F0aW9uIGdlbmVyYXRlZCBieSBhcGIgaW5pdApiaW5kYWJsZTogRmFsc2UKYXN5bmM6\
IG9wdGlvbmFsCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBkZW1vCnBsYW5zOgogIC0gbmFtZTog\
ZGVmYXVsdAogICAgZGVzY3JpcHRpb246IFRoaXMgZGVmYXVsdCBwbGFuIGRlcGxveXMgZGVtby1h\
cGIKICAgIGZyZWU6IFRydWUKICAgIG1ldGFkYXRhOiB7fQogICAgcGFyYW1ldGVyczogW10="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
