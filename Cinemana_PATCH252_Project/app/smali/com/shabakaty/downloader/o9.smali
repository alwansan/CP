.class public final Lcom/shabakaty/downloader/o9;
.super Ljava/lang/Object;
.source "AppBarConfiguration.kt"

# interfaces
.implements Lcom/shabakaty/downloader/m9$b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/shabakaty/downloader/rm1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rm1;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/o9;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/o9;->b:Lcom/shabakaty/downloader/rm1;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/o9;->b:Lcom/shabakaty/downloader/rm1;

    return-void
.end method


# virtual methods
.method public final synthetic a()Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/o9;->a:I

    const-string v1, "invoke(...)"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/o9;->b:Lcom/shabakaty/downloader/rm1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/o9;->b:Lcom/shabakaty/downloader/rm1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
