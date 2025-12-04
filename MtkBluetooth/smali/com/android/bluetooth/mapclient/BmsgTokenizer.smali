.class public final Lcom/android/bluetooth/mapclient/BmsgTokenizer;
.super Ljava/lang/Object;
.source "BmsgTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;
    }
.end annotation


# instance fields
.field private final mMatcher:Ljava/util/regex/Matcher;

.field private final mOffset:I

.field private mPos:I

.field private final mStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;-><init>(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mPos:I

    .line 38
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mStr:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mOffset:I

    .line 40
    const-string p2, "(([^:]*):(.*))?\r\n"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    .line 41
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mPos:I

    .line 42
    return-void
.end method


# virtual methods
.method public next()Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->next(Z)Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    move-result-object v0

    return-object v0
.end method

.method public next(Z)Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    iget v2, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mPos:I

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 50
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->pos()I

    move-result v0

    const-string v1, "Property or empty line expected"

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mPos:I

    .line 60
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 61
    move v0, v2

    .line 63
    :cond_2
    if-eqz v0, :cond_3

    .line 65
    new-instance p1, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 63
    :cond_3
    goto :goto_0
.end method

.method public pos()I
    .locals 2

    .line 77
    iget v0, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mPos:I

    iget v1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public remaining()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mStr:Ljava/lang/String;

    iget v1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer;->mPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
