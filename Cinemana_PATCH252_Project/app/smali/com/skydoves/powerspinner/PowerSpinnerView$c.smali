.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$c;
.super Ljava/lang/Object;
.source "PowerSpinnerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/v63;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerDismissListener(Lcom/shabakaty/downloader/rm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/rm1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rm1;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$c;->a:Lcom/shabakaty/downloader/rm1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$c;->a:Lcom/shabakaty/downloader/rm1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    return-void
.end method
