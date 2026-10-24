.class public final Lcom/shabakaty/downloader/an2;
.super Ljava/lang/Object;
.source "Regex.kt"


# instance fields
.field public final a:Ljava/util/regex/Matcher;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/an2;->a:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/an2;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/an2$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/an2$a;-><init>(Lcom/shabakaty/downloader/an2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/an2;->b:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/an2;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    return-object v0
.end method
