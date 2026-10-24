.class public abstract Lcom/shabakaty/downloader/yr3;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/yr3$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/yr3$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/yr3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/yr3$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/yr3;->a:Lcom/shabakaty/downloader/yr3$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c(Lcom/shabakaty/downloader/fr2;Ljava/lang/String;)Lcom/shabakaty/downloader/yr3;
    .locals 3

    sget-object v0, Lcom/shabakaty/downloader/yr3;->a:Lcom/shabakaty/downloader/yr3$a;

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/hz;->b:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_1

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/fr2;->e:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/fr2;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/fr2;->g:Lcom/shabakaty/downloader/fr2$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/fr2$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    array-length v2, p1

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/shabakaty/downloader/yr3$a;->a([BLcom/shabakaty/downloader/fr2;II)Lcom/shabakaty/downloader/yr3;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lcom/shabakaty/downloader/fr2;[B)Lcom/shabakaty/downloader/yr3;
    .locals 3

    sget-object p0, Lcom/shabakaty/downloader/yr3;->a:Lcom/shabakaty/downloader/yr3$a;

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/shabakaty/downloader/yr3$a;->a([BLcom/shabakaty/downloader/fr2;II)Lcom/shabakaty/downloader/yr3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract b()Lcom/shabakaty/downloader/fr2;
.end method

.method public abstract e(Lcom/shabakaty/downloader/do;)V
.end method
