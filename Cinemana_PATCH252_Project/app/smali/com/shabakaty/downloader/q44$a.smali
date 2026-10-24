.class public final Lcom/shabakaty/downloader/q44$a;
.super Lcom/shabakaty/downloader/af2;
.source "ShabakatyValidator.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/q44;->c([Lcom/shabakaty/downloader/j44;Lcom/shabakaty/downloader/tm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Boolean;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic s:I

.field public final synthetic t:Lcom/shabakaty/downloader/ho3;

.field public final synthetic u:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Boolean;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/shabakaty/downloader/ho3;Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lcom/shabakaty/downloader/ho3;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/q44$a;->r:Ljava/util/List;

    iput p2, p0, Lcom/shabakaty/downloader/q44$a;->s:I

    iput-object p3, p0, Lcom/shabakaty/downloader/q44$a;->t:Lcom/shabakaty/downloader/ho3;

    iput-object p4, p0, Lcom/shabakaty/downloader/q44$a;->u:Lcom/shabakaty/downloader/tm1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/q44$a;->r:Ljava/util/List;

    iget v1, p0, Lcom/shabakaty/downloader/q44$a;->s:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/q44$a;->r:Ljava/util/List;

    .line 4
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/q44$a;->t:Lcom/shabakaty/downloader/ho3;

    iget-boolean v2, v0, Lcom/shabakaty/downloader/ho3;->r:Z

    if-eq p1, v2, :cond_3

    xor-int/lit8 p1, v2, 0x1

    .line 7
    iput-boolean p1, v0, Lcom/shabakaty/downloader/ho3;->r:Z

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/q44$a;->u:Lcom/shabakaty/downloader/tm1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
