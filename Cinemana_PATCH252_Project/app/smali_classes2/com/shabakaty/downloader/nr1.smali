.class public final Lcom/shabakaty/downloader/nr1;
.super Lcom/shabakaty/downloader/de0$a;
.source "GsonConverterFactory.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/lr1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lr1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/de0$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/nr1;->a:Lcom/shabakaty/downloader/lr1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lcom/shabakaty/downloader/lt3;)Lcom/shabakaty/downloader/de0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/shabakaty/downloader/lt3;",
            ")",
            "Lcom/shabakaty/downloader/de0<",
            "*",
            "Lcom/shabakaty/downloader/yr3;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/nr1;->a:Lcom/shabakaty/downloader/lr1;

    invoke-static {p1}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/reflect/Type;)Lcom/shabakaty/downloader/cu4;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/lr1;->f(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/or1;

    iget-object p3, p0, Lcom/shabakaty/downloader/nr1;->a:Lcom/shabakaty/downloader/lr1;

    invoke-direct {p2, p3, p1}, Lcom/shabakaty/downloader/or1;-><init>(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/wr4;)V

    return-object p2
.end method

.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/shabakaty/downloader/lt3;)Lcom/shabakaty/downloader/de0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/shabakaty/downloader/lt3;",
            ")",
            "Lcom/shabakaty/downloader/de0<",
            "Lcom/shabakaty/downloader/ys3;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/nr1;->a:Lcom/shabakaty/downloader/lr1;

    invoke-static {p1}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/reflect/Type;)Lcom/shabakaty/downloader/cu4;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/lr1;->f(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/qz2;

    iget-object p3, p0, Lcom/shabakaty/downloader/nr1;->a:Lcom/shabakaty/downloader/lr1;

    invoke-direct {p2, p3, p1}, Lcom/shabakaty/downloader/qz2;-><init>(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/wr4;)V

    return-object p2
.end method
