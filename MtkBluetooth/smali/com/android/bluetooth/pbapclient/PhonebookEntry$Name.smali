.class public Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;
.super Ljava/lang/Object;
.source "PhonebookEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PhonebookEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# instance fields
.field public family:Ljava/lang/String;

.field public given:Ljava/lang/String;

.field public middle:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 39
    instance-of v0, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 40
    return v1

    .line 43
    :cond_0
    check-cast p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    .line 44
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    .line 45
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    .line 46
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    .line 47
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    .line 49
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    goto :goto_1

    :cond_6
    :goto_0
    const/4 v1, 0x1

    .line 44
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x17

    .line 55
    mul-int/lit8 v0, v0, 0x17

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 56
    mul-int/lit8 v0, v0, 0x17

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 57
    mul-int/lit8 v0, v0, 0x17

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    .line 58
    mul-int/lit8 v0, v0, 0x17

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    .line 59
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string v1, "Name: { family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, " given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, " middle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, " prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " suffix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
