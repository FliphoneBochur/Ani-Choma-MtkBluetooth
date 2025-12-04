.class public Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
.super Ljava/lang/Object;
.source "BluetoothMapbMessageMime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessageMime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimePart"
.end annotation


# instance fields
.field public mCharsetName:Ljava/lang/String;

.field public mContentDisposition:Ljava/lang/String;

.field public mContentId:Ljava/lang/String;

.field public mContentLocation:Ljava/lang/String;

.field public mContentType:Ljava/lang/String;

.field public mData:[B

.field public mFileName:Ljava/lang/String;

.field public mId:J

.field public mPartName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mId:J

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mFileName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 82
    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "Content-Type: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 87
    const-string v2, "; "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "charset=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 91
    const-string v2, "Content-Location: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 94
    const-string v2, "Content-ID: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 97
    const-string v2, "Content-Disposition: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    if-eqz v2, :cond_8

    .line 104
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMIL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 106
    :cond_5
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    if-ne v3, v4, :cond_6

    .line 109
    const-string v3, "Content-Transfer-Encoding: 8BIT\r\n\r\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 112
    :cond_6
    const-string v2, "Content-Transfer-Encoding: Quoted-Printable\r\n\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->encodeQuotedPrintable([B)Ljava/lang/String;

    move-result-object v2

    .line 115
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    goto :goto_1

    .line 118
    :cond_7
    const-string v2, "Content-Transfer-Encoding: Base64\r\n\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_8
    :goto_1
    if-eqz p3, :cond_9

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_9
    return-void
.end method

.method public encodePlainText(Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->encodeQuotedPrintable([B)Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/SMIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    goto :goto_1

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    const-string v1, ">\r\n"

    const-string v2, "<"

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "attachment"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :goto_1
    return-void
.end method

.method getDataAsString()Ljava/lang/String;
    .locals 5

    .line 50
    nop

    .line 51
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    .line 54
    const-string v1, "BluetoothMapbMessage"

    const-string v2, "UTF-8"

    if-nez v0, :cond_0

    .line 55
    move-object v0, v2

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 59
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    .line 60
    move-object v0, v2

    .line 65
    :cond_1
    goto :goto_0

    .line 62
    :catch_0
    move-exception v3

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unknown charset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - using UTF-8."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    move-object v0, v2

    .line 68
    :goto_0
    :try_start_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    invoke-direct {v3, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    goto :goto_1

    .line 69
    :catch_1
    move-exception v0

    .line 72
    :try_start_2
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    invoke-direct {v3, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    goto :goto_1

    .line 73
    :catch_2
    move-exception v2

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataAsString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 77
    :goto_1
    return-object v3
.end method
