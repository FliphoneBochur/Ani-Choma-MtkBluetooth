.class public Lcom/android/bluetooth/pbapclient/PhonebookEntry;
.super Ljava/lang/Object;
.source "PhonebookEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;,
        Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

.field public phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-direct {v0}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/android/vcard/VCardEntry;)V
    .locals 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-direct {v0}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    .line 128
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getFamily()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->family:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getGiven()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->given:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getMiddle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->middle:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getPrefix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->prefix:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getSuffix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->suffix:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object p1

    .line 136
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 141
    new-instance v1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;

    invoke-direct {v1}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;-><init>()V

    .line 142
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v2

    iput v2, v1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->type:I

    .line 143
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Phone;->number:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    goto :goto_0

    .line 146
    :cond_1
    return-void

    .line 137
    :cond_2
    :goto_1
    return-void
.end method

.method private equals(Lcom/android/bluetooth/pbapclient/PhonebookEntry;)Z
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    iget-object v1, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    iget-object p1, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 113
    instance-of v0, p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lcom/android/bluetooth/pbapclient/PhonebookEntry;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->equals(Lcom/android/bluetooth/pbapclient/PhonebookEntry;)Z

    move-result p1

    return p1

    .line 116
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    const-string v1, "PhonebookEntry { id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->name:Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/PhonebookEntry$Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PhonebookEntry;->phones:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
