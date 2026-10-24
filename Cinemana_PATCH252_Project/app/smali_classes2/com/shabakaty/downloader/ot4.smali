.class public final Lcom/shabakaty/downloader/ot4;
.super Ljava/lang/Object;
.source "TypeParameterUpperBoundEraser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ot4$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/kf2;

.field public final b:Lcom/shabakaty/downloader/ym3;

.field public final c:Lcom/shabakaty/downloader/qr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qr2<",
            "Lcom/shabakaty/downloader/ot4$a;",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ym3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/yj2;

    const-string v1, "Type parameter upper bound erasion results"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/yj2;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ot4$b;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/ot4$b;-><init>(Lcom/shabakaty/downloader/ot4;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/ot4;->a:Lcom/shabakaty/downloader/kf2;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/ym3;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ym3;-><init>(Lcom/shabakaty/downloader/ot4;)V

    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/ot4;->b:Lcom/shabakaty/downloader/ym3;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/ot4$c;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ot4$c;-><init>(Lcom/shabakaty/downloader/ot4;)V

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/yj2;->h(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/qr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ot4;->c:Lcom/shabakaty/downloader/qr2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/i82;->e:Lcom/shabakaty/downloader/b74;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ot4;->a:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b74;

    const-string v0, "erroneousErasedBound"

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/hu4;->m(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final b(Lcom/shabakaty/downloader/kt4;ZLcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;
    .locals 2

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAttr"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ot4;->c:Lcom/shabakaty/downloader/qr2;

    new-instance v1, Lcom/shabakaty/downloader/ot4$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/shabakaty/downloader/ot4$a;-><init>(Lcom/shabakaty/downloader/kt4;ZLcom/shabakaty/downloader/i82;)V

    check-cast v0, Lcom/shabakaty/downloader/yj2$m;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yj2$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qe2;

    return-object p1
.end method
