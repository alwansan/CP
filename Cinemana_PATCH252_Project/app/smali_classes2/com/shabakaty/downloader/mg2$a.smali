.class public final Lcom/shabakaty/downloader/mg2$a;
.super Lcom/shabakaty/downloader/af2;
.source "resolvers.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mg2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/n82;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/m82;",
        "Lcom/shabakaty/downloader/lg2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/mg2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mg2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/mg2$a;->r:Lcom/shabakaty/downloader/mg2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/m82;

    const-string v0, "typeParameter"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mg2$a;->r:Lcom/shabakaty/downloader/mg2;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/mg2;->d:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/mg2$a;->r:Lcom/shabakaty/downloader/mg2;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/lg2;

    .line 7
    iget-object v3, v1, Lcom/shabakaty/downloader/mg2;->a:Lcom/shabakaty/downloader/bg2;

    const-string v4, "<this>"

    .line 8
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "typeParameterResolver"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v4, Lcom/shabakaty/downloader/bg2;

    .line 10
    iget-object v5, v3, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 11
    iget-object v3, v3, Lcom/shabakaty/downloader/bg2;->c:Lcom/shabakaty/downloader/kf2;

    .line 12
    invoke-direct {v4, v5, v1, v3}, Lcom/shabakaty/downloader/bg2;-><init>(Lcom/shabakaty/downloader/y72;Lcom/shabakaty/downloader/nt4;Lcom/shabakaty/downloader/kf2;)V

    .line 13
    iget-object v3, v1, Lcom/shabakaty/downloader/mg2;->b:Lcom/shabakaty/downloader/qm0;

    .line 14
    invoke-interface {v3}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/od0;->d(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/bg2;

    move-result-object v3

    .line 15
    iget v4, v1, Lcom/shabakaty/downloader/mg2;->c:I

    add-int/2addr v4, v0

    .line 16
    iget-object v0, v1, Lcom/shabakaty/downloader/mg2;->b:Lcom/shabakaty/downloader/qm0;

    .line 17
    invoke-direct {v2, v3, p1, v4, v0}, Lcom/shabakaty/downloader/lg2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/m82;ILcom/shabakaty/downloader/qm0;)V

    move-object p1, v2

    :goto_0
    return-object p1
.end method
