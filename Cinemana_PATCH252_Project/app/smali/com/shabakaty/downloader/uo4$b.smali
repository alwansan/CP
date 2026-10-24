.class public final Lcom/shabakaty/downloader/uo4$b;
.super Lcom/shabakaty/downloader/qp1$a;
.source "TraceMetric.java"

# interfaces
.implements Lcom/shabakaty/downloader/gs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uo4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qp1$a<",
        "Lcom/shabakaty/downloader/uo4;",
        "Lcom/shabakaty/downloader/uo4$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/uo4;->A()Lcom/shabakaty/downloader/uo4;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/qp1$a;-><init>(Lcom/shabakaty/downloader/qp1;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/uo4$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/uo4;->A()Lcom/shabakaty/downloader/uo4;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qp1$a;-><init>(Lcom/shabakaty/downloader/qp1;)V

    return-void
.end method


# virtual methods
.method public t(Ljava/lang/String;J)Lcom/shabakaty/downloader/uo4$b;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v0, Lcom/shabakaty/downloader/uo4;

    invoke-static {v0}, Lcom/shabakaty/downloader/uo4;->C(Lcom/shabakaty/downloader/uo4;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast v0, Lcom/shabakaty/downloader/jm2;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/jm2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public u(J)Lcom/shabakaty/downloader/uo4$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v0, Lcom/shabakaty/downloader/uo4;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/uo4;->I(Lcom/shabakaty/downloader/uo4;J)V

    return-object p0
.end method

.method public v(J)Lcom/shabakaty/downloader/uo4$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v0, Lcom/shabakaty/downloader/uo4;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/uo4;->J(Lcom/shabakaty/downloader/uo4;J)V

    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/shabakaty/downloader/uo4$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v0, Lcom/shabakaty/downloader/uo4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/uo4;->B(Lcom/shabakaty/downloader/uo4;Ljava/lang/String;)V

    return-object p0
.end method
