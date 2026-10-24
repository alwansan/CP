.class public final synthetic Lcom/shabakaty/downloader/x80;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/pj3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/shabakaty/downloader/w80;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/w80;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/x80;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/x80;->b:Lcom/shabakaty/downloader/w80;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/x80;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x80;->b:Lcom/shabakaty/downloader/w80;

    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x80;->b:Lcom/shabakaty/downloader/w80;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
