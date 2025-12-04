.class Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertySelector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;
    }
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private final mSelector:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1330
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->mSelector:[B

    .line 1335
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1302
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->checkVCardSelector(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1302
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkVCardSelector(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1363
    nop

    .line 1365
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->values()[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v6, v0, v4

    .line 1366
    iget v7, v6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->pos:I

    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->mSelector:[B

    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->checkbit(I[B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1367
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checking for prop :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->prop:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BluetoothPbapVcardManager"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const-string v7, "0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1369
    iget-object v5, v6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->prop:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->checkprop(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bit.prop.equals current prop :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->prop:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    nop

    .line 1372
    goto :goto_2

    .line 1374
    :cond_0
    move v5, v2

    goto :goto_1

    .line 1376
    :cond_1
    const-string v7, "1"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1377
    iget-object v5, v6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->prop:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->checkprop(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bit.prop.notequals current prop"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->prop:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    nop

    .line 1380
    return v2

    .line 1382
    :cond_2
    move v5, v3

    .line 1365
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v3, v5

    .line 1387
    :goto_2
    return v3
.end method

.method private checkbit(I[B)Z
    .locals 3

    .line 1338
    array-length v0, p2

    .line 1339
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v2, p1, 0x8

    sub-int/2addr v0, v2

    aget-byte p2, p2, v0

    rem-int/lit8 p1, p1, 0x8

    shr-int p1, p2, p1

    and-int/2addr p1, v1

    if-nez p1, :cond_0

    .line 1340
    const/4 p1, 0x0

    return p1

    .line 1342
    :cond_0
    return v1
.end method

.method private checkprop(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1346
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1347
    nop

    .line 1348
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1349
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1350
    const-string v4, "[;:]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    .line 1351
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bit.prop.equals current prop :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothPbapVcardManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    nop

    .line 1354
    const/4 p1, 0x1

    return p1

    .line 1348
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1359
    :cond_1
    return v1
.end method

.method private getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1391
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1392
    nop

    .line 1393
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, ""

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 1394
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1395
    const-string v5, "N:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1396
    const/16 v2, 0x3a

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1393
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1400
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "returning name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPbapVcardManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    return-object v2
.end method
