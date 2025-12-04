.class Lcom/android/bluetooth/mapclient/BmessageBuilder;
.super Ljava/lang/Object;
.source "BmessageBuilder.java"


# static fields
.field private static final BBODY_BEGIN:Ljava/lang/String; = "BEGIN:BBODY"

.field private static final BBODY_CHARSET:Ljava/lang/String; = "CHARSET:"

.field private static final BBODY_ENCODING:Ljava/lang/String; = "ENCODING:"

.field private static final BBODY_END:Ljava/lang/String; = "END:BBODY"

.field private static final BBODY_LANGUAGE:Ljava/lang/String; = "LANGUAGE:"

.field private static final BBODY_LENGTH:Ljava/lang/String; = "LENGTH:"

.field private static final BENV_BEGIN:Ljava/lang/String; = "BEGIN:BENV"

.field private static final BENV_END:Ljava/lang/String; = "END:BENV"

.field private static final BMSG_BEGIN:Ljava/lang/String; = "BEGIN:BMSG"

.field private static final BMSG_END:Ljava/lang/String; = "END:BMSG"

.field private static final BMSG_FOLDER:Ljava/lang/String; = "FOLDER:"

.field private static final BMSG_STATUS:Ljava/lang/String; = "STATUS:"

.field private static final BMSG_TYPE:Ljava/lang/String; = "TYPE:"

.field private static final BMSG_VERSION:Ljava/lang/String; = "VERSION:1.0"

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final MSG_BEGIN:Ljava/lang/String; = "BEGIN:MSG"

.field private static final MSG_END:Ljava/lang/String; = "END:MSG"

.field private static final VCARD_BEGIN:Ljava/lang/String; = "BEGIN:VCARD"

.field private static final VCARD_EMAIL:Ljava/lang/String; = "EMAIL:"

.field private static final VCARD_END:Ljava/lang/String; = "END:VCARD"

.field private static final VCARD_N:Ljava/lang/String; = "N:"

.field private static final VCARD_TEL:Ljava/lang/String; = "TEL:"

.field private static final VCARD_VERSION:Ljava/lang/String; = "VERSION:2.1"


# instance fields
.field private final mBmsg:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    .line 60
    return-void
.end method

.method private build(Lcom/android/bluetooth/mapclient/Bmessage;)V
    .locals 6

    .line 71
    const-string v0, "BEGIN:MSG"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "END:MSG"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    iget-object v4, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mMessage:Ljava/lang/String;

    .line 72
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v1, v4

    .line 74
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v5, "BEGIN:BMSG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v5, "VERSION:1.0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v5, "STATUS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgStatus:Lcom/android/bluetooth/mapclient/Bmessage$Status;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v5, "TYPE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v5, "FOLDER:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v4, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mOriginators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry;

    .line 82
    invoke-direct {p0, v5}, Lcom/android/bluetooth/mapclient/BmessageBuilder;->buildVcard(Lcom/android/vcard/VCardEntry;)V

    .line 83
    goto :goto_0

    .line 86
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v5, "BEGIN:BENV"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v4, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry;

    .line 89
    invoke-direct {p0, v5}, Lcom/android/bluetooth/mapclient/BmessageBuilder;->buildVcard(Lcom/android/vcard/VCardEntry;)V

    .line 90
    goto :goto_1

    .line 93
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v5, "BEGIN:BBODY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v4, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyEncoding:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v5, "ENCODING:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyEncoding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_2
    iget-object v4, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyCharset:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 100
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v5, "CHARSET:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyCharset:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_3
    iget-object v4, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyLanguage:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 104
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v5, "LANGUAGE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyLanguage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v5, "LENGTH:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/mapclient/Bmessage;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v0, "END:BBODY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v0, "END:BENV"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v0, "END:BMSG"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    return-void
.end method

.method private buildVcard(Lcom/android/vcard/VCardEntry;)V
    .locals 5

    .line 127
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/BmessageBuilder;->buildVcardN(Lcom/android/vcard/VCardEntry;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object p1

    .line 131
    iget-object v2, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v3, "BEGIN:VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v2, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v4, "VERSION:2.1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v2, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v4, "N:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v4, "TEL:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v2, "EMAIL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    const-string v0, "END:VCARD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    return-void
.end method

.method private buildVcardN(Lcom/android/vcard/VCardEntry;)Ljava/lang/String;
    .locals 4

    .line 149
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object p1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$NameData;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$NameData;->getGiven()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$NameData;->getGiven()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$NameData;->getMiddle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$NameData;->getMiddle()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$NameData;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$NameData;->getPrefix()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$NameData;->getSuffix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$NameData;->getSuffix()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static createBmessage(Lcom/android/bluetooth/mapclient/Bmessage;)Ljava/lang/String;
    .locals 1

    .line 63
    new-instance v0, Lcom/android/bluetooth/mapclient/BmessageBuilder;

    invoke-direct {v0}, Lcom/android/bluetooth/mapclient/BmessageBuilder;-><init>()V

    .line 65
    invoke-direct {v0, p0}, Lcom/android/bluetooth/mapclient/BmessageBuilder;->build(Lcom/android/bluetooth/mapclient/Bmessage;)V

    .line 67
    iget-object p0, v0, Lcom/android/bluetooth/mapclient/BmessageBuilder;->mBmsg:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
