.class public final Lcom/shabakaty/downloader/bg2;
.super Ljava/lang/Object;
.source "context.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/y72;

.field public final b:Lcom/shabakaty/downloader/nt4;

.field public final c:Lcom/shabakaty/downloader/kf2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/kf2<",
            "Lcom/shabakaty/downloader/p82;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/kf2;

.field public final e:Lcom/shabakaty/downloader/r82;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y72;Lcom/shabakaty/downloader/nt4;Lcom/shabakaty/downloader/kf2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y72;",
            "Lcom/shabakaty/downloader/nt4;",
            "Lcom/shabakaty/downloader/kf2<",
            "Lcom/shabakaty/downloader/p82;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateForDefaultTypeQualifiers"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/bg2;->b:Lcom/shabakaty/downloader/nt4;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/bg2;->c:Lcom/shabakaty/downloader/kf2;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/bg2;->d:Lcom/shabakaty/downloader/kf2;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/r82;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/r82;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/nt4;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    return-void
.end method


# virtual methods
.method public final a()Lcom/shabakaty/downloader/p82;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bg2;->d:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/p82;

    return-object v0
.end method
