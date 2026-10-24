.class public final synthetic Lcom/shabakaty/downloader/rh0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/rh0;

.field public static final synthetic t:Lcom/shabakaty/downloader/rh0;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/rh0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/rh0;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/rh0;->s:Lcom/shabakaty/downloader/rh0;

    new-instance v0, Lcom/shabakaty/downloader/rh0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/rh0;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/rh0;->t:Lcom/shabakaty/downloader/rh0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/rh0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p2, p0, Lcom/shabakaty/downloader/rh0;->r:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    return-void

    :goto_0
    sget p2, Lcom/shabakaty/downloader/ew0;->x:I

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
