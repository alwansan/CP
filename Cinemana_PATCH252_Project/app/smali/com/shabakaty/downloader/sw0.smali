.class public final synthetic Lcom/shabakaty/downloader/sw0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic r:Lcom/shabakaty/downloader/sw0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/sw0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sw0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sw0;->r:Lcom/shabakaty/downloader/sw0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    sget p2, Lcom/shabakaty/downloader/bx0;->z:I

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
