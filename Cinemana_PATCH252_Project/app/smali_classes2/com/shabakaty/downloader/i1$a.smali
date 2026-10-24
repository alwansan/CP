.class public final Lcom/shabakaty/downloader/i1$a;
.super Lcom/shabakaty/downloader/af2;
.source "AbstractTypeAliasDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/i1;->T()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/qw4;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/i1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/i1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/i1$a;->r:Lcom/shabakaty/downloader/i1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/qw4;

    const-string v0, "type"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/i1$a;->r:Lcom/shabakaty/downloader/i1;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p1

    .line 4
    instance-of v3, p1, Lcom/shabakaty/downloader/kt4;

    if-eqz v3, :cond_0

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/kt4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 6
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
