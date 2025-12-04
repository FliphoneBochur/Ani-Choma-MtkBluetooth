.class Lcom/android/bluetooth/hfp/HeadsetCallState;
.super Lcom/android/bluetooth/hfp/HeadsetMessageObject;
.source "HeadsetCallState.java"


# instance fields
.field mCallState:I

.field mName:Ljava/lang/String;

.field mNumActive:I

.field mNumHeld:I

.field mNumber:Ljava/lang/String;

.field mType:I


# direct methods
.method constructor <init>(IIILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetMessageObject;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    .line 53
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    .line 54
    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    .line 55
    iput-object p4, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    .line 56
    iput p5, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    .line 57
    iput-object p6, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mName:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public buildString(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 62
    if-nez p1, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, "[numActive="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, ", numHeld="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, ", callState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, ", number="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    const-string v1, "null"

    const-string v2, "***"

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :goto_0
    const-string v0, ", type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :goto_1
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 90
    return v0

    .line 92
    :cond_0
    instance-of v1, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 93
    return v2

    .line 95
    :cond_1
    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetCallState;

    .line 96
    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    iget v3, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    iget v3, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    iget v3, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    .line 97
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    iget v3, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mName:Ljava/lang/String;

    .line 98
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 96
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mName:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
