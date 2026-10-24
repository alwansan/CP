.class public Lcom/shabakaty/downloader/o23;
.super Ljava/lang/Object;
.source "OSInAppMessageController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/i23;

.field public final synthetic s:Ljava/util/List;

.field public final synthetic t:Lcom/onesignal/x;


# direct methods
.method public constructor <init>(Lcom/onesignal/x;Lcom/shabakaty/downloader/i23;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/o23;->t:Lcom/onesignal/x;

    iput-object p2, p0, Lcom/shabakaty/downloader/o23;->r:Lcom/shabakaty/downloader/i23;

    iput-object p3, p0, Lcom/shabakaty/downloader/o23;->s:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/o23;->t:Lcom/onesignal/x;

    iget-object p2, p0, Lcom/shabakaty/downloader/o23;->r:Lcom/shabakaty/downloader/i23;

    iget-object v0, p0, Lcom/shabakaty/downloader/o23;->s:Ljava/util/List;

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/onesignal/x;->G(Lcom/shabakaty/downloader/i23;Ljava/util/List;)V

    return-void
.end method
