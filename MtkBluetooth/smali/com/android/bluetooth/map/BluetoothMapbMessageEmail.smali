.class public Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;
.super Lcom/android/bluetooth/map/BluetoothMapbMessage;
.source "BluetoothMapbMessageEmail.java"


# instance fields
.field private mEmailBody:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 63
    const-string v2, "END:MSG"

    const-string v3, "/END\\:MSG"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string v1, "BluetoothMapbMessage"

    const-string v2, "Email has no body - this should not be possible"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    return-object v0
.end method

.method public parseMsgInit()V
    .locals 0

    .line 53
    return-void
.end method

.method public parseMsgPart(Ljava/lang/String;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 40
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    .line 44
    :goto_0
    return-void
.end method

.method public setEmailBody(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    .line 29
    const-string p1, "UTF-8"

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mCharset:Ljava/lang/String;

    .line 30
    const-string p1, "8bit"

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEncoding:Ljava/lang/String;

    .line 31
    return-void
.end method
