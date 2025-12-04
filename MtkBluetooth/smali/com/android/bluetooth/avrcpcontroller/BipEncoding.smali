.class public Lcom/android/bluetooth/avrcpcontroller/BipEncoding;
.super Ljava/lang/Object;
.source "BipEncoding.java"


# static fields
.field public static final BMP:I = 0x2

.field public static final GIF:I = 0x3

.field public static final JPEG:I = 0x0

.field public static final JPEG2000:I = 0x4

.field public static final PNG:I = 0x1

.field public static final UNKNOWN:I = 0x7

.field public static final USR_XXX:I = 0x6

.field public static final WBMP:I = 0x5

.field private static final sEncodingNamesToIds:Ljava/util/HashMap;

.field private static final sIdsToEncodingNames:Landroid/util/SparseArray;


# instance fields
.field private final mProprietaryEncodingId:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sEncodingNamesToIds:Ljava/util/HashMap;

    .line 55
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "JPEG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sEncodingNamesToIds:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "GIF"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sEncodingNamesToIds:Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "WBMP"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sEncodingNamesToIds:Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "PNG"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sEncodingNamesToIds:Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "JPEG2000"

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sEncodingNamesToIds:Ljava/util/HashMap;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "BMP"

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sIdsToEncodingNames:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sIdsToEncodingNames:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sIdsToEncodingNames:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sIdsToEncodingNames:Landroid/util/SparseArray;

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sIdsToEncodingNames:Landroid/util/SparseArray;

    invoke-virtual {v0, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sIdsToEncodingNames:Landroid/util/SparseArray;

    invoke-virtual {v0, v10, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sIdsToEncodingNames:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;-><init>(ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-string v0, "\'"

    if-ltz p1, :cond_2

    const/4 v1, 0x6

    if-gt p1, v1, :cond_2

    .line 119
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->mType:I

    .line 121
    const/4 v2, 0x0

    .line 122
    if-ne p1, v1, :cond_1

    .line 123
    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received invalid user defined encoding id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->mProprietaryEncodingId:Ljava/lang/String;

    .line 130
    return-void

    .line 117
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received invalid encoding type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->determineEncoding(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->mType:I

    .line 96
    const/4 v1, 0x0

    .line 97
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 98
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 100
    :cond_0
    iput-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->mProprietaryEncodingId:Ljava/lang/String;

    .line 103
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->mType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 106
    return-void

    .line 104
    :cond_1
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to determine type of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/ParseException;

    const-string v0, "Encoding input invalid"

    invoke-direct {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static determineEncoding(Ljava/lang/String;)I
    .locals 2

    .line 170
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sEncodingNamesToIds:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 171
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 172
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "USR-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 173
    const/4 p0, 0x6

    return p0

    .line 175
    :cond_1
    const/4 p0, 0x7

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 180
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 181
    :cond_0
    instance-of v1, p1, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 183
    :cond_1
    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    .line 184
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->getType()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 185
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->getProprietaryEncodingId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->getProprietaryEncodingId()Ljava/lang/String;

    move-result-object v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 184
    :goto_0
    return v0
.end method

.method public getProprietaryEncodingId()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->mProprietaryEncodingId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->mType:I

    return v0
.end method

.method public isAndroidSupported()Z
    .locals 3

    .line 162
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->mType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 190
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USR-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->mProprietaryEncodingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->sIdsToEncodingNames:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    return-object v0
.end method
