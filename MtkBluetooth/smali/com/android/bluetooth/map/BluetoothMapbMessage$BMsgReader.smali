.class Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BMsgReader"
.end annotation


# instance fields
.field mInStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    .line 348
    return-void
.end method

.method private getLineAsBytes()[B
    .locals 5

    .line 361
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 363
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 364
    const/16 v3, 0xa

    const/16 v4, 0xd

    if-ne v1, v4, :cond_1

    .line 365
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_0

    .line 366
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 367
    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 374
    :cond_1
    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 376
    goto :goto_0

    .line 379
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :cond_3
    nop

    .line 385
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    const-string v1, "BluetoothMapbMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public expect(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 434
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    return-void

    .line 435
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" in: \""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Line or substring is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public expect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\""

    const-string v3, "\" in: \""

    const-string v4, "Expected \""

    if-eqz v1, :cond_1

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 457
    return-void

    .line 454
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 450
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getDataBytes(I)[B
    .locals 5

    .line 466
    new-array v0, p1, [B

    .line 469
    const/4 v1, 0x0

    .line 470
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    sub-int v4, p1, v1

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_1

    .line 472
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 473
    return-object v2

    .line 475
    :cond_0
    add-int/2addr v1, v3

    goto :goto_0

    .line 480
    :cond_1
    nop

    .line 481
    return-object v0

    .line 477
    :catch_0
    move-exception p1

    .line 478
    const-string v0, "BluetoothMapbMessage"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    return-object v2
.end method

.method public getLine()Ljava/lang/String;
    .locals 4

    .line 394
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineAsBytes()[B

    move-result-object v1

    .line 395
    array-length v2, v1

    if-nez v2, :cond_0

    .line 396
    return-object v0

    .line 398
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 400
    :catch_0
    move-exception v1

    .line 401
    const-string v2, "BluetoothMapbMessage"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    return-object v0
.end method

.method public getLineEnforce()Ljava/lang/String;
    .locals 2

    .line 412
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_0

    .line 417
    return-object v0

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bmessage too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
