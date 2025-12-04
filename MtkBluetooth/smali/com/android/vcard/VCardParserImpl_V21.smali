.class Lcom/android/vcard/VCardParserImpl_V21;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "8BIT"

.field private static final LOG_TAG:Ljava/lang/String; = "MTK_vCard"

.field private static final STATE_GROUP_OR_PROPERTY_NAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2


# instance fields
.field private mCanceled:Z

.field protected mCurrentCharset:Ljava/lang/String;

.field protected mCurrentEncoding:Ljava/lang/String;

.field protected final mIntermediateCharset:Ljava/lang/String;

.field private final mInterpreterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation
.end field

.field protected mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

.field protected final mUnknownTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUnknownValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 157
    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 158
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    .line 142
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 153
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 161
    const-string p1, "ISO-8859-1"

    iput-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    .line 162
    return-void
.end method

.method private getPotentialMultiline(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object p1

    .line 813
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 814
    goto :goto_1

    .line 817
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardParserImpl_V21;->getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 818
    if-eqz v1, :cond_1

    .line 819
    goto :goto_1

    .line 826
    :cond_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 827
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    goto :goto_0

    .line 830
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 889
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 890
    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 891
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 895
    if-ne v0, v1, :cond_0

    .line 896
    move v0, v2

    goto :goto_0

    .line 897
    :cond_0
    if-ne v2, v1, :cond_1

    .line 898
    goto :goto_0

    .line 900
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 902
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 904
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 767
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 769
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 770
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 773
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const-string p1, "\r\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :goto_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_3

    .line 781
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 783
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 784
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_1

    goto :goto_2

    .line 786
    :cond_1
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 789
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    nop

    .line 793
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 779
    :cond_3
    new-instance p1, Lcom/android/vcard/exception/VCardException;

    const-string v0, "File ended during parsing a Quoted-Printable String"

    invoke-direct {p1, v0}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 795
    :cond_4
    return-object p1
.end method

.method private handleAdrOrgN(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 705
    iget-object v1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v2, "QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardParserImpl_V21;->getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 712
    invoke-virtual {p1, p2}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 716
    nop

    .line 717
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 718
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 719
    const/4 v2, 0x0

    invoke-static {v1, v2, p3, p4}, Lcom/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    goto :goto_0

    .line 723
    :cond_0
    goto :goto_2

    .line 724
    :cond_1
    nop

    .line 725
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardParserImpl_V21;->getPotentialMultiline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 724
    invoke-static {p2, p3, p4}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 726
    nop

    .line 727
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 728
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 729
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    goto :goto_1

    .line 733
    :cond_2
    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/vcard/VCardProperty;->setValues(Ljava/util/List;)V

    .line 734
    iget-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/vcard/VCardInterpreter;

    .line 735
    invoke-interface {p3, p1}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    .line 736
    goto :goto_3

    .line 737
    :cond_3
    return-void
.end method

.method private handleNest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 350
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onEntryStarted()V

    .line 351
    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItems()V

    .line 353
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 354
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onEntryEnded()V

    .line 355
    goto :goto_1

    .line 356
    :cond_1
    return-void
.end method

.method private isAsciiLetter(C)Z
    .locals 1

    .line 557
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 558
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 560
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private parseItemInter(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 333
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v0

    .line 334
    const-string v1, "AGENT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardParserImpl_V21;->handleAgent(Lcom/android/vcard/VCardProperty;)V

    goto :goto_1

    .line 336
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/vcard/VCardParserImpl_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    const-string v1, "VERSION"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    new-instance p1, Lcom/android/vcard/exception/VCardVersionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incompatible version: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " != "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handlePropertyValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 346
    :goto_1
    return-void

    .line 344
    :cond_3
    new-instance p1, Lcom/android/vcard/exception/VCardException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown property name: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseOneVCard()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 216
    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 217
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    .line 220
    nop

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const/4 v0, 0x0

    return v0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardInterpreter;

    .line 225
    invoke-interface {v2}, Lcom/android/vcard/VCardInterpreter;->onEntryStarted()V

    .line 226
    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItems()V

    .line 228
    iget-object v1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardInterpreter;

    .line 229
    invoke-interface {v2}, Lcom/android/vcard/VCardInterpreter;->onEntryEnded()V

    .line 230
    goto :goto_1

    .line 231
    :cond_2
    return v0
.end method

.method static unescapeCharacter(C)Ljava/lang/String;
    .locals 1

    .line 948
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 951
    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 949
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addInterpreter(Lcom/android/vcard/VCardInterpreter;)V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    return-void
.end method

.method public final declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 1051
    :try_start_0
    const-string v0, "MTK_vCard"

    const-string v1, "ParserImpl received cancel operation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    monitor-exit p0

    return-void

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected constructPropertyData(Ljava/lang/String;)Lcom/android/vcard/VCardProperty;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 365
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/vcard/VCardProperty;

    invoke-direct {v2}, Lcom/android/vcard/VCardProperty;-><init>()V

    .line 367
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 368
    const/4 v4, 0x0

    if-lez v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    new-instance v0, Lcom/android/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct {v0}, Lcom/android/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v0

    .line 372
    :cond_1
    :goto_0
    nop

    .line 373
    nop

    .line 377
    move v5, v4

    move v6, v5

    :goto_1
    if-ge v4, v3, :cond_10

    .line 378
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 379
    const-string v8, ""

    const/16 v9, 0x3b

    const/4 v11, 0x2

    const-string v12, "MTK_vCard"

    const/4 v13, 0x1

    if-eqz v5, :cond_9

    const-string v14, "Double-quoted params found in vCard 2.1. Silently allow it"

    const-string v15, "2.1"

    const/16 v10, 0x22

    if-eq v5, v13, :cond_4

    if-eq v5, v11, :cond_2

    goto/16 :goto_3

    .line 421
    :cond_2
    if-ne v7, v10, :cond_f

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 423
    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_3
    move v5, v13

    goto/16 :goto_3

    .line 404
    :cond_4
    if-ne v7, v10, :cond_6

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 406
    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_5
    move v5, v11

    goto :goto_3

    .line 410
    :cond_6
    if-ne v7, v9, :cond_7

    .line 411
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 412
    add-int/lit8 v6, v4, 0x1

    goto :goto_3

    .line 413
    :cond_7
    const/16 v9, 0x3a

    if-ne v7, v9, :cond_f

    .line 414
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 415
    sub-int/2addr v3, v13

    if-ge v4, v3, :cond_8

    add-int/2addr v4, v13

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_8
    invoke-virtual {v2, v8}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 416
    return-object v2

    .line 381
    :cond_9
    const/16 v10, 0x3a

    if-ne v7, v10, :cond_b

    .line 382
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardProperty;->setName(Ljava/lang/String;)V

    .line 384
    sub-int/2addr v3, v13

    if-ge v4, v3, :cond_a

    add-int/2addr v4, v13

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_a
    invoke-virtual {v2, v8}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 385
    return-object v2

    .line 386
    :cond_b
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_e

    .line 387
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 388
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_c

    .line 389
    const-string v6, "Empty group found. Ignoring."

    invoke-static {v12, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 391
    :cond_c
    invoke-virtual {v2, v6}, Lcom/android/vcard/VCardProperty;->addGroup(Ljava/lang/String;)V

    .line 393
    :goto_2
    add-int/lit8 v6, v4, 0x1

    .line 394
    :cond_d
    goto :goto_3

    :cond_e
    if-ne v7, v9, :cond_d

    .line 395
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-virtual {v2, v5}, Lcom/android/vcard/VCardProperty;->setName(Ljava/lang/String;)V

    .line 397
    add-int/lit8 v5, v4, 0x1

    .line 398
    nop

    .line 399
    move v6, v5

    move v5, v13

    .line 377
    :cond_f
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 433
    :cond_10
    new-instance v0, Lcom/android/vcard/exception/VCardInvalidLineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid line: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getAvailableEncodingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 982
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    return-object v0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object p1

    .line 839
    if-eqz p1, :cond_3

    .line 850
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardParserImpl_V21;->getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 852
    const-string v2, "X-ANDROID-CUSTOM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 863
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 864
    goto :goto_2

    .line 869
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    goto :goto_0

    .line 853
    :cond_2
    :goto_1
    const-string v1, "MTK_vCard"

    const-string v2, "Found a next property during parsing a BASE64 string, which must not contain semi-colon or colon. Treat the line as next property."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problematic line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    nop

    .line 872
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 840
    :cond_3
    new-instance p1, Lcom/android/vcard/exception/VCardException;

    const-string v0, "File ended during parsing BASE64 binary"

    invoke-direct {p1, v0}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getCurrentCharset()Ljava/lang/String;
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    return-object v0
.end method

.method protected getDefaultCharset()Ljava/lang/String;
    .locals 1

    .line 990
    const-string v0, "UTF-8"

    return-object v0
.end method

.method protected getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .line 986
    const-string v0, "8BIT"

    return-object v0
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 970
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownTypeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 974
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownValueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 978
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 201
    return-object v0

    .line 199
    :cond_1
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    const-string v1, "Reached end of buffer."

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getVersion()I
    .locals 1

    .line 959
    const/4 v0, 0x0

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .line 966
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Lcom/android/vcard/VCardProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 916
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 919
    invoke-interface {v1, p1}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    .line 920
    goto :goto_0

    .line 921
    :cond_0
    return-void

    .line 923
    :cond_1
    new-instance p1, Lcom/android/vcard/exception/VCardAgentNotSupportedException;

    const-string v0, "AGENT Property is not supported now."

    invoke-direct {p1, v0}, Lcom/android/vcard/exception/VCardAgentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 568
    invoke-virtual {p1, p2, p3}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method protected handleCharset(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 1

    .line 526
    iput-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    .line 527
    const-string v0, "CHARSET"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method protected handleEncoding(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getAvailableEncodingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    new-instance p1, Lcom/android/vcard/exception/VCardException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown encoding \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 510
    :cond_1
    :goto_0
    const-string v0, "ENCODING"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 516
    return-void
.end method

.method protected handleLanguage(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 535
    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 536
    array-length v1, v0

    const-string v2, "\""

    const-string v3, "Invalid Language: \""

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 539
    const/4 v1, 0x0

    aget-object v4, v0, v1

    .line 540
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 541
    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_1

    .line 542
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 541
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 543
    :cond_0
    new-instance p1, Lcom/android/vcard/exception/VCardException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 546
    :cond_1
    const/4 v4, 0x1

    aget-object v0, v0, v4

    .line 547
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 548
    nop

    :goto_1
    if-ge v1, v4, :cond_3

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 550
    :cond_2
    new-instance p1, Lcom/android/vcard/exception/VCardException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 553
    :cond_3
    const-string v0, "LANGUAGE"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-void

    .line 537
    :cond_4
    new-instance p1, Lcom/android/vcard/exception/VCardException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected handleParamWithoutName(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 0

    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method protected handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 445
    const-string v0, "="

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 446
    array-length v0, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 447
    aget-object v0, p2, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 448
    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 449
    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_0
    const-string v1, "VALUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_1
    const-string v1, "ENCODING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleEncoding(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_2
    const-string v1, "CHARSET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleCharset(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_3
    const-string v1, "LANGUAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 458
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleLanguage(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_4
    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 460
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :goto_0
    goto :goto_1

    .line 462
    :cond_5
    new-instance p1, Lcom/android/vcard/exception/VCardException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_6
    aget-object p2, p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleParamWithoutName(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 467
    :goto_1
    return-void
.end method

.method protected handlePropertyValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 573
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 574
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v0

    .line 576
    nop

    .line 577
    const-string v1, "CHARSET"

    invoke-virtual {p1, v1}, Lcom/android/vcard/VCardProperty;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 579
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 580
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 581
    const-string v1, "UTF-8"

    .line 585
    :cond_1
    const-string v3, "ADR"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ISO-8859-1"

    if-nez v3, :cond_e

    .line 586
    const-string v3, "ORG"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 587
    const-string v3, "N"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_9

    .line 592
    :cond_2
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v5, "QUOTED-PRINTABLE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_b

    .line 596
    const-string v3, "FN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 597
    const-string p2, "ENCODING"

    invoke-virtual {p1, p2}, Lcom/android/vcard/VCardProperty;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    if-nez p2, :cond_3

    .line 598
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_6

    .line 609
    :cond_3
    iget-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v3, "BASE64"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v3, "MTK_vCard"

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 610
    const-string v7, "B"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_3

    .line 630
    :cond_4
    iget-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v7, "7BIT"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v7, "8BIT"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 631
    const-string v7, "X-"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 632
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    aput-object v7, p2, v6

    .line 634
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p2, v5

    .line 633
    const-string v7, "The encoding \"%s\" is unsupported by vCard %s"

    invoke-static {v7, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 632
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_5
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result p2

    if-nez p2, :cond_8

    .line 660
    nop

    .line 662
    :goto_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object p2

    .line 669
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 670
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x20

    if-ne v3, v7, :cond_7

    .line 671
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v7, "END:VCARD"

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 672
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 674
    if-nez v2, :cond_6

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_6
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    goto :goto_1

    .line 683
    :cond_7
    if-eqz v2, :cond_8

    .line 684
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    :cond_8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 689
    invoke-static {v0, v4, v1}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-virtual {p1, p2}, Lcom/android/vcard/VCardProperty;->setValues(Ljava/util/List;)V

    .line 693
    iget-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 694
    invoke-interface {v0, p1}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    .line 695
    goto :goto_2

    .line 614
    :cond_9
    :goto_3
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 616
    :try_start_1
    invoke-static {p2, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/vcard/VCardProperty;->setByteValue([B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 619
    nop

    .line 620
    :try_start_2
    iget-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 621
    invoke-interface {v0, p1}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    .line 622
    goto :goto_4

    .line 617
    :catch_0
    move-exception p2

    .line 618
    new-instance p2, Lcom/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decode error on base64 photo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 623
    :catch_1
    move-exception p2

    .line 624
    const-string p2, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 626
    invoke-interface {v0, p1}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    .line 627
    goto :goto_5

    .line 628
    :cond_a
    goto :goto_8

    .line 600
    :cond_b
    :goto_6
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 601
    nop

    .line 602
    invoke-static {p2, v6, v4, v1}, Lcom/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual {p1, p2}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 605
    new-array p2, v5, [Ljava/lang/String;

    aput-object v0, p2, v6

    invoke-virtual {p1, p2}, Lcom/android/vcard/VCardProperty;->setValues([Ljava/lang/String;)V

    .line 606
    iget-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 607
    invoke-interface {v0, p1}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    .line 608
    goto :goto_7

    .line 609
    :cond_c
    nop

    .line 697
    :cond_d
    :goto_8
    return-void

    .line 588
    :cond_e
    :goto_9
    invoke-direct {p0, p1, v0, v4, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleAdrOrgN(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method protected handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 3

    .line 480
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownTypeSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 482
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "TYPE unsupported by %s: "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTK_vCard"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    const-string v0, "TYPE"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method protected handleValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 3

    .line 493
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownValueSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 495
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 497
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 498
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 497
    const-string v1, "The value unsupported by TYPE of %s: "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTK_vCard"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    const-string v0, "VALUE"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 170
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property name unsupported by vCard 2.1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MTK_vCard"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .locals 0

    .line 940
    invoke-static {p1}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 931
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 1002
    if-eqz p1, :cond_3

    .line 1006
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1007
    new-instance p1, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {p1, v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1010
    iget-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 1011
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onVCardStarted()V

    .line 1012
    goto :goto_0

    .line 1016
    :cond_0
    monitor-enter p0

    .line 1017
    :try_start_0
    iget-boolean p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCanceled:Z

    if-eqz p1, :cond_1

    .line 1018
    const-string p1, "MTK_vCard"

    const-string v0, "Cancel request has come. exitting parse operation."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    monitor-exit p0

    goto :goto_1

    .line 1021
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseOneVCard()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1023
    nop

    .line 1027
    :goto_1
    iget-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 1028
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onVCardEnded()V

    .line 1029
    goto :goto_2

    .line 1030
    :cond_2
    return-void

    .line 1021
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1003
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "InputStream must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseItem()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 305
    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 307
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->constructPropertyData(Ljava/lang/String;)Lcom/android/vcard/VCardProperty;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {v0}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v2

    .line 313
    const-string v3, "BEGIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "VCARD"

    if-eqz v3, :cond_1

    .line 314
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->handleNest()V

    goto :goto_0

    .line 317
    :cond_0
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown BEGIN type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    const-string v3, "END"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    const/4 v0, 0x1

    return v0

    .line 323
    :cond_2
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown END type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->parseItemInter(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 328
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected parseItems()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 280
    const-string v0, "Invalid line which looks like some comment was found. Ignored."

    const-string v1, "MTK_vCard"

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItem()Z

    move-result v2
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardInvalidCommentLineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_0

    .line 284
    :catch_0
    move-exception v2

    .line 285
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 288
    :goto_0
    if-nez v2, :cond_0

    .line 290
    :try_start_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItem()Z

    move-result v2
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardInvalidCommentLineException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :goto_1
    goto :goto_0

    .line 291
    :catch_1
    move-exception v3

    .line 292
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 295
    :cond_0
    return-void
.end method

.method public parseOne(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 1033
    if-eqz p1, :cond_2

    .line 1037
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1038
    new-instance p1, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {p1, v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1041
    iget-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 1042
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onVCardStarted()V

    .line 1043
    goto :goto_0

    .line 1044
    :cond_0
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseOneVCard()Z

    .line 1045
    iget-object p1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 1046
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onVCardEnded()V

    .line 1047
    goto :goto_1

    .line 1048
    :cond_1
    return-void

    .line 1034
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "InputStream must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected peekLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 244
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 245
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 246
    return v1

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 248
    nop

    .line 251
    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 252
    array-length v4, v2

    .line 258
    if-ne v4, v3, :cond_1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BEGIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v2, v2, v1

    .line 259
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    return v1

    .line 261
    :cond_1
    if-eqz p1, :cond_3

    .line 265
    if-eqz p1, :cond_2

    goto :goto_0

    .line 267
    :cond_2
    new-instance p1, Lcom/android/vcard/exception/VCardException;

    const-string v0, "Reached where must not be reached."

    invoke-direct {p1, v0}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_3
    new-instance p1, Lcom/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" came)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :cond_4
    goto :goto_0
.end method
