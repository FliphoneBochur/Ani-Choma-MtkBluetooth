.class Lcom/android/bluetooth/mapclient/BmessageParser;
.super Ljava/lang/Object;
.source "BmessageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapclient/BmessageParser$VcardHandler;
    }
.end annotation


# static fields
.field private static final BEGIN_BBODY:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

.field private static final BEGIN_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

.field private static final BEGIN_BMSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

.field private static final BEGIN_MSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

.field private static final BEGIN_VCARD:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final CRLF_LEN:I = 0x2

.field private static final DBG:Z = false

.field private static final END_BBODY:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

.field private static final END_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

.field private static final END_BMSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

.field private static final END_MSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

.field private static final END_VCARD:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

.field private static final MSG_CONTAINER_LEN:I = 0x16

.field private static final TAG:Ljava/lang/String; = "BmessageParser"


# instance fields
.field private final mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

.field private mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    const-string v1, "BEGIN"

    const-string v2, "BMSG"

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BMSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    .line 44
    new-instance v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    const-string v3, "END"

    invoke-direct {v0, v3, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->END_BMSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    .line 46
    new-instance v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    const-string v2, "VCARD"

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_VCARD:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    .line 47
    new-instance v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-direct {v0, v3, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->END_VCARD:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    .line 49
    new-instance v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    const-string v2, "BENV"

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    .line 50
    new-instance v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-direct {v0, v3, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->END_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    .line 52
    new-instance v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    const-string v2, "BBODY"

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BBODY:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    .line 53
    new-instance v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-direct {v0, v3, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->END_BBODY:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    .line 55
    new-instance v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    const-string v2, "MSG"

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_MSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    .line 56
    new-instance v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-direct {v0, v3, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->END_MSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/bluetooth/mapclient/Bmessage;

    invoke-direct {v0}, Lcom/android/bluetooth/mapclient/Bmessage;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    .line 70
    return-void
.end method

.method public static createBmessage(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 3

    .line 73
    const-string v0, "BmessageParser"

    new-instance v1, Lcom/android/bluetooth/mapclient/BmessageParser;

    invoke-direct {v1}, Lcom/android/bluetooth/mapclient/BmessageParser;-><init>()V

    .line 80
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {v1, p0}, Lcom/android/bluetooth/mapclient/BmessageParser;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .line 89
    iget-object p0, v1, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    return-object p0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    const-string v1, "Cannot parse bMessage"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    return-object v2

    .line 81
    :catch_1
    move-exception p0

    .line 82
    const-string v1, "I/O exception when parsing bMessage"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    return-object v2
.end method

.method private varargs expected([Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;)Ljava/text/ParseException;
    .locals 6

    .line 93
    nop

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    .line 97
    if-nez v3, :cond_0

    .line 98
    const-string v3, " or "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    nop

    .line 96
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_0

    .line 104
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->pos()I

    move-result v1

    invoke-direct {p1, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method

.method private extractVcard(Ljava/lang/StringBuilder;)Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_VCARD:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object v1

    .line 386
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    sget-object v2, Lcom/android/bluetooth/mapclient/BmessageParser;->END_VCARD:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object p1

    return-object p1

    .line 387
    :cond_0
    goto :goto_0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    .line 116
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object p1

    .line 117
    sget-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BMSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 121
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/BmessageParser;->parseProperties()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object p1

    .line 123
    :goto_0
    sget-object v2, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_VCARD:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/BmessageParser;->extractVcard(Ljava/lang/StringBuilder;)Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object v2

    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/BmessageParser;->parseVcard(Ljava/lang/String;)Lcom/android/vcard/VCardEntry;

    move-result-object p1

    .line 130
    iget-object v3, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v3, v3, Lcom/android/bluetooth/mapclient/Bmessage;->mOriginators:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    move-object p1, v2

    goto :goto_0

    .line 133
    :cond_0
    sget-object v2, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    invoke-direct {p0, v1}, Lcom/android/bluetooth/mapclient/BmessageParser;->parseEnvelope(I)Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object p1

    .line 139
    sget-object v2, Lcom/android/bluetooth/mapclient/BmessageParser;->END_BMSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    .line 148
    return-void

    .line 140
    :cond_1
    new-array p1, v1, [Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->END_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    aput-object v1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/BmessageParser;->expected([Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;)Ljava/text/ParseException;

    move-result-object p1

    throw p1

    .line 134
    :cond_2
    new-array p1, v1, [Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    aput-object v1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/BmessageParser;->expected([Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;)Ljava/text/ParseException;

    move-result-object p1

    throw p1

    .line 118
    :cond_3
    new-array p1, v1, [Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BMSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    aput-object v1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/BmessageParser;->expected([Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;)Ljava/text/ParseException;

    move-result-object p1

    throw p1
.end method

.method private parseBody()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object v0

    .line 264
    iget-object v1, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    const-string v2, "PARTID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Invalid LENGTH value"

    if-eqz v1, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    iget-object v1, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    const-string v3, "ENCODING"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v3, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyEncoding:Ljava/lang/String;

    goto :goto_1

    .line 269
    :cond_1
    iget-object v1, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    const-string v3, "CHARSET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v3, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyCharset:Ljava/lang/String;

    goto :goto_1

    .line 272
    :cond_2
    iget-object v1, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    const-string v3, "LANGUAGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v3, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyLanguage:Ljava/lang/String;

    goto :goto_1

    .line 275
    :cond_3
    iget-object v1, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    const-string v3, "LENGTH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v3, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->pos()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 284
    :cond_4
    :goto_1
    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_MSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 296
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v0, v0, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyCharset:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "BmessageParser"

    if-nez v0, :cond_5

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The charset was not set to charset UTF-8: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v4, v4, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyCharset:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget v0, v0, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyLength:I

    add-int/lit8 v0, v0, -0x16

    .line 306
    add-int/lit8 v4, v0, 0x2

    .line 307
    iget-object v5, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v5}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->pos()I

    move-result v5

    add-int/2addr v5, v4

    .line 312
    iget-object v6, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v6}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->remaining()Ljava/lang/String;

    move-result-object v6

    .line 313
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 315
    if-ltz v4, :cond_d

    array-length v8, v7

    if-gt v4, v8, :cond_d

    .line 322
    new-instance v8, Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    new-instance v9, Ljava/lang/String;

    array-length v10, v7

    sub-int/2addr v10, v4

    invoke-direct {v9, v7, v4, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v8, v9, v5}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;-><init>(Ljava/lang/String;I)V

    iput-object v8, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    .line 324
    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next(Z)Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object v8

    .line 326
    const/4 v9, 0x0

    if-eqz v8, :cond_8

    .line 327
    sget-object v2, Lcom/android/bluetooth/mapclient/BmessageParser;->END_MSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {v8, v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 328
    iget-object v2, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v2, v2, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 329
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v7, v9, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, v1, Lcom/android/bluetooth/mapclient/Bmessage;->mMessage:Ljava/lang/String;

    goto :goto_2

    .line 331
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7, v9, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, v1, Lcom/android/bluetooth/mapclient/Bmessage;->mMessage:Ljava/lang/String;

    goto :goto_2

    .line 336
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prop Invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v0, "Possible Invalid LENGTH value"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-array v0, v5, [Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->END_MSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    aput-object v1, v0, v9

    invoke-direct {p0, v0}, Lcom/android/bluetooth/mapclient/BmessageParser;->expected([Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 341
    :cond_8
    nop

    .line 347
    if-ltz v4, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v4, v7, :cond_c

    .line 353
    const-string v2, "byte LENGTH seems to be invalid, trying with char length"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v2, Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    .line 357
    invoke-virtual {v2}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object v2

    .line 359
    sget-object v3, Lcom/android/bluetooth/mapclient/BmessageParser;->END_MSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 363
    iget-object v2, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v2, v2, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 364
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/mapclient/Bmessage;->mMessage:Ljava/lang/String;

    goto :goto_2

    .line 366
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/bluetooth/mapclient/Bmessage;->mMessage:Ljava/lang/String;

    .line 370
    :goto_2
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object v0

    .line 372
    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->END_BBODY:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 376
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object v0

    return-object v0

    .line 373
    :cond_a
    new-array v0, v5, [Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->END_BBODY:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    aput-object v1, v0, v9

    invoke-direct {p0, v0}, Lcom/android/bluetooth/mapclient/BmessageParser;->expected([Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 360
    :cond_b
    new-array v0, v5, [Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->END_MSG:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    aput-object v1, v0, v9

    invoke-direct {p0, v0}, Lcom/android/bluetooth/mapclient/BmessageParser;->expected([Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 350
    :cond_c
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->pos()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 318
    :cond_d
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->pos()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 284
    :cond_e
    goto/16 :goto_0
.end method

.method private parseEnvelope(I)Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x3

    if-gt p1, v0, :cond_5

    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object v0

    .line 213
    :goto_0
    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_VCARD:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-direct {p0, v0}, Lcom/android/bluetooth/mapclient/BmessageParser;->extractVcard(Ljava/lang/StringBuilder;)Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object v1

    .line 220
    if-ne p1, v2, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/mapclient/BmessageParser;->parseVcard(Ljava/lang/String;)Lcom/android/vcard/VCardEntry;

    move-result-object v0

    .line 222
    iget-object v2, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v2, v2, Lcom/android/bluetooth/mapclient/Bmessage;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 226
    :cond_1
    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 227
    add-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/BmessageParser;->parseEnvelope(I)Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object p1

    goto :goto_1

    .line 229
    :cond_2
    sget-object p1, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BBODY:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 230
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/BmessageParser;->parseBody()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object p1

    .line 236
    :goto_1
    sget-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->END_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 240
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object p1

    return-object p1

    .line 237
    :cond_3
    new-array p1, v2, [Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    sget-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->END_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    aput-object v0, p1, v3

    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/BmessageParser;->expected([Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;)Ljava/text/ParseException;

    move-result-object p1

    throw p1

    .line 233
    :cond_4
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    sget-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    aput-object v0, p1, v3

    sget-object v0, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BBODY:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    aput-object v0, p1, v2

    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/BmessageParser;->expected([Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;)Ljava/text/ParseException;

    move-result-object p1

    throw p1

    .line 203
    :cond_5
    new-instance p1, Ljava/text/ParseException;

    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->pos()I

    move-result v0

    const-string v1, "bEnvelope is nested more than 3 times"

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private parseProperties()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object v0

    .line 164
    iget-object v1, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    const-string v2, "VERSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v2, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgVersion:Ljava/lang/String;

    goto :goto_4

    .line 167
    :cond_1
    iget-object v1, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    const-string v2, "STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 168
    invoke-static {}, Lcom/android/bluetooth/mapclient/Bmessage$Status;->values()[Lcom/android/bluetooth/mapclient/Bmessage$Status;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 169
    iget-object v5, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/bluetooth/mapclient/Bmessage$Status;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iput-object v4, v1, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgStatus:Lcom/android/bluetooth/mapclient/Bmessage$Status;

    .line 171
    goto :goto_1

    .line 168
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    goto :goto_4

    .line 175
    :cond_4
    iget-object v1, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    const-string v3, "TYPE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 176
    invoke-static {}, Lcom/android/bluetooth/mapclient/Bmessage$Type;->values()[Lcom/android/bluetooth/mapclient/Bmessage$Type;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_6

    aget-object v4, v1, v2

    .line 177
    iget-object v5, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/bluetooth/mapclient/Bmessage$Type;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 178
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iput-object v4, v1, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    .line 179
    goto :goto_3

    .line 176
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    goto :goto_4

    .line 183
    :cond_7
    iget-object v1, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    const-string v2, "FOLDER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 184
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mBmsg:Lcom/android/bluetooth/mapclient/Bmessage;

    iget-object v2, v0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgFolder:Ljava/lang/String;

    .line 188
    :cond_8
    :goto_4
    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_VCARD:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/android/bluetooth/mapclient/BmessageParser;->BEGIN_BENV:Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    :cond_9
    return-object v0
.end method

.method private parseVcard(Ljava/lang/String;)Lcom/android/vcard/VCardEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 393
    nop

    .line 396
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v1}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 397
    new-instance v2, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v2}, Lcom/android/vcard/VCardEntryConstructor;-><init>()V

    .line 398
    new-instance v3, Lcom/android/bluetooth/mapclient/BmessageParser$VcardHandler;

    invoke-direct {v3, p0, v0}, Lcom/android/bluetooth/mapclient/BmessageParser$VcardHandler;-><init>(Lcom/android/bluetooth/mapclient/BmessageParser;Lcom/android/bluetooth/mapclient/BmessageParser$1;)V

    .line 399
    invoke-virtual {v2, v3}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 400
    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 401
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V

    .line 403
    iget-object v0, v3, Lcom/android/bluetooth/mapclient/BmessageParser$VcardHandler;->vcard:Lcom/android/vcard/VCardEntry;
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception p1

    goto :goto_1

    .line 405
    :catch_1
    move-exception v1

    .line 407
    :try_start_1
    new-instance v1, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v1}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    .line 408
    new-instance v2, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v2}, Lcom/android/vcard/VCardEntryConstructor;-><init>()V

    .line 409
    new-instance v3, Lcom/android/bluetooth/mapclient/BmessageParser$VcardHandler;

    invoke-direct {v3, p0, v0}, Lcom/android/bluetooth/mapclient/BmessageParser$VcardHandler;-><init>(Lcom/android/bluetooth/mapclient/BmessageParser;Lcom/android/bluetooth/mapclient/BmessageParser$1;)V

    .line 410
    invoke-virtual {v2, v3}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 411
    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 412
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V

    .line 414
    iget-object p1, v3, Lcom/android/bluetooth/mapclient/BmessageParser$VcardHandler;->vcard:Lcom/android/vcard/VCardEntry;
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_2

    .line 420
    move-object v0, p1

    goto :goto_0

    .line 418
    :catch_2
    move-exception p1

    goto :goto_0

    .line 416
    :catch_3
    move-exception p1

    .line 420
    nop

    .line 424
    :goto_0
    nop

    .line 426
    :goto_1
    if-eqz v0, :cond_0

    .line 431
    return-object v0

    .line 427
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmessageParser;->mParser:Lcom/android/bluetooth/mapclient/BmsgTokenizer;

    .line 428
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->pos()I

    move-result v0

    const-string v1, "Cannot parse vCard object (neither 2.1 nor 3.0?)"

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
