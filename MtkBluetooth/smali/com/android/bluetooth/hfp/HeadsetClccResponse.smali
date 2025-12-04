.class Lcom/android/bluetooth/hfp/HeadsetClccResponse;
.super Lcom/android/bluetooth/hfp/HeadsetMessageObject;
.source "HeadsetClccResponse.java"


# instance fields
.field mDirection:I

.field mIndex:I

.field mMode:I

.field mMpty:Z

.field mNumber:Ljava/lang/String;

.field mStatus:I

.field mType:I


# direct methods
.method constructor <init>(IIIIZLjava/lang/String;I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetMessageObject;-><init>()V

    .line 69
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mIndex:I

    .line 70
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mDirection:I

    .line 71
    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mStatus:I

    .line 72
    iput p4, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMode:I

    .line 73
    iput-boolean p5, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMpty:Z

    .line 74
    iput-object p6, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mNumber:Ljava/lang/String;

    .line 75
    iput p7, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mType:I

    .line 76
    return-void
.end method


# virtual methods
.method public buildString(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 80
    if-nez p1, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v0, "[index="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mIndex:I

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v0, ", direction="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mDirection:I

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, ", status="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mStatus:I

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, ", callMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMode:I

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, ", isMultiParty="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMpty:Z

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, ", number="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 96
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    :cond_1
    const-string v0, "***"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :goto_0
    const-string v0, ", type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    return-void
.end method
