.class abstract Lcom/android/bluetooth/avrcpcontroller/BipRequest;
.super Ljava/lang/Object;
.source "BipRequest.java"


# static fields
.field private static final DBG:Z

.field protected static final HEADER_ID_IMG_DESCRIPTOR:B = 0x71t

.field protected static final HEADER_ID_IMG_HANDLE:B = 0x30t

.field private static final TAG:Ljava/lang/String; = "avrcpcontroller.BipRequest"

.field public static final TYPE_GET_IMAGE:I = 0x1

.field public static final TYPE_GET_IMAGE_PROPERTIES:I


# instance fields
.field protected mHeaderSet:Ljavax/obex/HeaderSet;

.field protected mOperation:Ljavax/obex/ClientOperation;

.field protected mResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "avrcpcontroller.BipRequest"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->DBG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mOperation:Ljavax/obex/ClientOperation;

    .line 50
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mHeaderSet:Ljavax/obex/HeaderSet;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mResponseCode:I

    .line 52
    return-void
.end method

.method private declared-synchronized getOperation()Ljavax/obex/ClientOperation;
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mOperation:Ljavax/obex/ClientOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setOperation(Ljavax/obex/ClientOperation;)V
    .locals 0

    monitor-enter p0

    .line 157
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mOperation:Ljavax/obex/ClientOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected debug(Ljava/lang/String;)V
    .locals 1

    .line 169
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->DBG:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "avrcpcontroller.BipRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    return-void
.end method

.method protected error(Ljava/lang/String;)V
    .locals 1

    .line 185
    const-string v0, "avrcpcontroller.BipRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public abstract execute(Ljavax/obex/ClientSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected executeGet(Ljavax/obex/ClientSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const-string v0, "Exeucting GET"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->debug(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->setOperation(Ljavax/obex/ClientOperation;)V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, v0}, Ljavax/obex/ClientSession;->get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object p1

    check-cast p1, Ljavax/obex/ClientOperation;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->setOperation(Ljavax/obex/ClientOperation;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/obex/ClientOperation;->setGetFinalFlag(Z)V

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljavax/obex/ClientOperation;->continueOperation(ZZ)Z

    .line 80
    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->readResponseHeaders(Ljavax/obex/HeaderSet;)V

    .line 81
    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->readResponse(Ljava/io/InputStream;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 84
    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->close()V

    .line 85
    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mResponseCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GET final response code is \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mResponseCode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->debug(Ljava/lang/String;)V

    .line 92
    return-void

    .line 86
    :catch_0
    move-exception p1

    .line 87
    const/16 v0, 0xd0

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mResponseCode:I

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET threw an exeception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->error(Ljava/lang/String;)V

    .line 89
    throw p1
.end method

.method protected executePut(Ljavax/obex/ClientSession;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const-string v0, "Exeucting PUT"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->debug(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->setOperation(Ljavax/obex/ClientOperation;)V

    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mHeaderSet:Ljavax/obex/HeaderSet;

    array-length v1, p2

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc3

    invoke-virtual {v0, v2, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, v0}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object p1

    check-cast p1, Ljavax/obex/ClientOperation;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->setOperation(Ljavax/obex/ClientOperation;)V

    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mOperation:Ljavax/obex/ClientOperation;

    invoke-virtual {v0}, Ljavax/obex/ClientOperation;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 106
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 107
    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->readResponseHeaders(Ljavax/obex/HeaderSet;)V

    .line 108
    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->close()V

    .line 109
    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mResponseCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    nop

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PUT final response code is \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mResponseCode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->debug(Ljava/lang/String;)V

    .line 116
    return-void

    .line 110
    :catch_0
    move-exception p1

    .line 111
    const/16 p2, 0xd0

    iput p2, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mResponseCode:I

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PUT threw an exeception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->error(Ljava/lang/String;)V

    .line 113
    throw p1
.end method

.method public final getResponseCode()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mResponseCode:I

    return v0
.end method

.method public abstract getType()I
.end method

.method public final isSuccess()Z
    .locals 2

    .line 124
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mResponseCode:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 0

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avrcpcontroller.BipRequest (type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mResponseCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected warn(Ljava/lang/String;)V
    .locals 1

    .line 178
    const-string v0, "avrcpcontroller.BipRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method
