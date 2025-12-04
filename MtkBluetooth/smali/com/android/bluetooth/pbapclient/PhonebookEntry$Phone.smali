.class public Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;
.super Ljava/lang/Object;
.source "PhonebookEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PhonebookEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Phone"
.end annotation


# instance fields
.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 86
    instance-of v0, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 87
    return v1

    .line 90
    :cond_0
    check-cast p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->type:I

    iget p1, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->type:I

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 97
    iget v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->type:I

    mul-int/lit8 v0, v0, 0x17

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v1, " Phone: { number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
