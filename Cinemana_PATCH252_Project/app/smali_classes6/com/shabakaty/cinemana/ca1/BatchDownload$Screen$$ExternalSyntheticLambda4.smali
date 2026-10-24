.class public final synthetic Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

.field public final synthetic f$1:Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda4;->f$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda4;->f$1:Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda4;->f$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda4;->f$1:Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    invoke-virtual {v0, v1, p1, p2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->lambda$quality$21$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Landroid/content/DialogInterface;I)V

    return-void
.end method
