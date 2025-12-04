.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCardFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    }
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private final mFilter:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1231
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 1250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1251
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->mFilter:[B

    .line 1252
    return-void
.end method

.method private isFilteredIn(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;Z)Z
    .locals 4

    .line 1236
    iget v0, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->pos:I

    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1237
    iget v2, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->pos:I

    rem-int/lit8 v2, v2, 0x8

    .line 1238
    if-nez p2, :cond_0

    iget-boolean v3, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->onlyCheckV21:Z

    if-eqz v3, :cond_0

    .line 1239
    return v1

    .line 1241
    :cond_0
    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget-boolean p1, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->excludeForV21:Z

    if-eqz p1, :cond_1

    .line 1242
    return v3

    .line 1244
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->mFilter:[B

    if-eqz p1, :cond_4

    array-length p2, p1

    if-lt v0, p2, :cond_2

    goto :goto_1

    .line 1247
    :cond_2
    array-length p2, p1

    sub-int/2addr p2, v0

    aget-byte p1, p1, p2

    shr-int/2addr p1, v2

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    return v1

    .line 1245
    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public apply(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12

    .line 1259
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->mFilter:[B

    if-nez v0, :cond_0

    .line 1260
    return-object p1

    .line 1262
    :cond_0
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1264
    nop

    .line 1266
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v5, p1, v3

    .line 1269
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1270
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1271
    const-string v4, "[;:]"

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    .line 1272
    nop

    .line 1274
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->values()[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    move-result-object v6

    array-length v8, v6

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    .line 1275
    iget-object v11, v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->prop:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1276
    invoke-direct {p0, v10, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->isFilteredIn(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;Z)Z

    move-result v6

    .line 1277
    goto :goto_2

    .line 1274
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v6, v7

    .line 1284
    :goto_2
    const-string v8, "X-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1285
    nop

    .line 1286
    const-string v6, "X-IRMC-CALL-DATETIME"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1287
    move v4, v7

    goto :goto_3

    .line 1286
    :cond_3
    move v4, v2

    goto :goto_3

    .line 1284
    :cond_4
    move v4, v6

    .line 1293
    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    .line 1294
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1298
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isPhotoEnabled()Z
    .locals 2

    .line 1255
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->isFilteredIn(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;Z)Z

    move-result v0

    return v0
.end method
