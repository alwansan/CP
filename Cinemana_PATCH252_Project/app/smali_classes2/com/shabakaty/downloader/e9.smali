.class public final Lcom/shabakaty/downloader/e9;
.super Ljava/lang/Object;
.source "AnnotationsImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/d9;


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fi1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/e9;->r:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/e9;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/e9;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/e9;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/e9;->r:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/e9;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/e9;->r:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/shabakaty/downloader/v21;->r:Lcom/shabakaty/downloader/v21;

    return-object v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/e9;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public m1(Lcom/shabakaty/downloader/fi1;)Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/e9;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/d9$b;->b(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/fi1;)Z

    move-result p1

    return p1

    .line 2
    :goto_0
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/d9$b;->b(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/fi1;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/e9;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/d9$b;->a(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object p1

    return-object p1

    :goto_0
    const-string v0, "fqName"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/e9;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fi1;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/t31;->a:Lcom/shabakaty/downloader/t31;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/e9;->r:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/e9;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
