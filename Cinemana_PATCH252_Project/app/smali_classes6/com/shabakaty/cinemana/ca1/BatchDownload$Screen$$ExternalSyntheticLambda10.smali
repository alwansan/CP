.class public final synthetic Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

.field public final synthetic f$1:Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

.field public final synthetic f$2:Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda10;->f$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda10;->f$1:Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda10;->f$2:Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda10;->f$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda10;->f$1:Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda10;->f$2:Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->lambda$probe$17$com-shabakaty-cinemana-ca1-BatchDownload$Screen(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;)V

    return-void
.end method
