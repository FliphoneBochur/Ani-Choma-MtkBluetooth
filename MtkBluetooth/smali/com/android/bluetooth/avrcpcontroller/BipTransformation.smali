.class public Lcom/android/bluetooth/avrcpcontroller/BipTransformation;
.super Ljava/lang/Object;
.source "BipTransformation.java"


# static fields
.field public static final CROP:I = 0x2

.field public static final FILL:I = 0x1

.field public static final STRETCH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "avrcpcontroller.BipTransformation"

.field public static final UNKNOWN:I = -0x1


# instance fields
.field public final mSupportedTransformations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->mSupportedTransformations:Ljava/util/HashSet;

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->mSupportedTransformations:Ljava/util/HashSet;

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->addTransformation(I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->mSupportedTransformations:Ljava/util/HashSet;

    .line 62
    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 65
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 66
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v3, p1, v2

    .line 67
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x702b18fb

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v6, :cond_4

    const v6, 0x2eba90

    if-eq v5, v6, :cond_3

    const v6, 0x2ff583

    if-eq v5, v6, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v5, "fill"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v8

    goto :goto_1

    :cond_3
    const-string v5, "crop"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v7

    goto :goto_1

    :cond_4
    const-string v5, "stretch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v1

    :goto_1
    if-eqz v4, :cond_7

    if-eq v4, v8, :cond_6

    if-eq v4, v7, :cond_5

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found unknown transformation \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "avrcpcontroller.BipTransformation"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 75
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->addTransformation(I)V

    .line 76
    goto :goto_2

    .line 72
    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->addTransformation(I)V

    .line 73
    goto :goto_2

    .line 69
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->addTransformation(I)V

    .line 70
    nop

    .line 66
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_8
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->mSupportedTransformations:Ljava/util/HashSet;

    .line 95
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->addTransformation(I)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method private isValid(I)Z
    .locals 1

    .line 134
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addTransformation(I)V
    .locals 3

    .line 106
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->mSupportedTransformations:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transformation ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 158
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 159
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->supportsAny()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 160
    :cond_1
    instance-of v0, p1, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 162
    :cond_2
    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->mSupportedTransformations:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->mSupportedTransformations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSupported(I)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->mSupportedTransformations:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeTransformation(I)V
    .locals 3

    .line 119
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->mSupportedTransformations:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 124
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transformation ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsAny()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->mSupportedTransformations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->supportsAny()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    const-string v0, ""

    .line 170
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "stretch "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fill "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "crop "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
