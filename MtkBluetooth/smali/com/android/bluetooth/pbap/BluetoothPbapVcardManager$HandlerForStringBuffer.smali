.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerForStringBuffer"
.end annotation


# instance fields
.field private mOperation:Ljavax/obex/Operation;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPhoneOwnVCard:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->mPhoneOwnVCard:Ljava/lang/String;

    .line 1148
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->mOperation:Ljavax/obex/Operation;

    .line 1149
    if-eqz p3, :cond_1

    .line 1150
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->mPhoneOwnVCard:Ljava/lang/String;

    .line 1151
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$300()Z

    move-result p1

    const-string p2, "BluetoothPbapVcardManager"

    if-eqz p1, :cond_0

    .line 1152
    const-string p1, "phone own number vcard:"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$300()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1155
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->mPhoneOwnVCard:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_1
    return-void
.end method

.method private write(Ljava/lang/String;)Z
    .locals 2

    .line 1162
    if-eqz p1, :cond_0

    .line 1163
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    const/4 p1, 0x1

    return p1

    .line 1166
    :catch_0
    move-exception p1

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write outputstrem failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPbapVcardManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1168
    :cond_0
    nop

    .line 1169
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onEntryCreated(Ljava/lang/String;)Z
    .locals 0

    .line 1186
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->write(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onInit(Landroid/content/Context;)Z
    .locals 2

    .line 1174
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->mOperation:Ljavax/obex/Operation;

    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->mOutputStream:Ljava/io/OutputStream;

    .line 1175
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->mPhoneOwnVCard:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1176
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->mPhoneOwnVCard:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->write(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1178
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 1179
    :catch_0
    move-exception p1

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open outputstrem failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPbapVcardManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/4 p1, 0x0

    return p1
.end method

.method public onTerminate()V
    .locals 2

    .line 1190
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->mOperation:Ljavax/obex/Operation;

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v0

    const-string v1, "BluetoothPbapVcardManager"

    if-nez v0, :cond_0

    .line 1191
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    const-string v0, "CloseStream failed!"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1195
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1196
    const-string v0, "CloseStream ok!"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_1
    :goto_0
    return-void
.end method
