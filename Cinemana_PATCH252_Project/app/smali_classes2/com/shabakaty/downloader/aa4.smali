.class public final Lcom/shabakaty/downloader/aa4;
.super Ljava/lang/Object;
.source "SpecialJvmAnnotations.kt"

# interfaces
.implements Lcom/shabakaty/downloader/he2$c;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ho3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ho3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/aa4;->a:Lcom/shabakaty/downloader/ho3;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;
    .locals 0

    .line 1
    sget-object p2, Lcom/shabakaty/downloader/sa2;->a:Lcom/shabakaty/downloader/sa2;

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/sa2;->c:Lcom/shabakaty/downloader/v20;

    .line 3
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/aa4;->a:Lcom/shabakaty/downloader/ho3;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/shabakaty/downloader/ho3;->r:Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
