.class public final synthetic Lcom/shabakaty/downloader/kb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/kb;

.field public static final synthetic t:Lcom/shabakaty/downloader/kb;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/kb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kb;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/kb;->s:Lcom/shabakaty/downloader/kb;

    new-instance v0, Lcom/shabakaty/downloader/kb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kb;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/kb;->t:Lcom/shabakaty/downloader/kb;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/kb;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p2, p0, Lcom/shabakaty/downloader/kb;->r:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    .line 2
    :goto_0
    sget p2, Lcom/shabakaty/downloader/u60;->S:I

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
