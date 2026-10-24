.class public abstract Lcom/shabakaty/downloader/ot3;
.super Ljava/lang/Object;
.source "modifierChecks.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ot3$a;,
        Lcom/shabakaty/downloader/ot3$b;,
        Lcom/shabakaty/downloader/ot3$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/zd2;",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/ot3;->a:Lcom/shabakaty/downloader/tm1;

    const-string p2, "must return "

    .line 2
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ot3;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ot3;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/xn1;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ot3;->a:Lcom/shabakaty/downloader/tm1;

    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/shabakaty/downloader/xn1;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/jz$a;->a(Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/xn1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
