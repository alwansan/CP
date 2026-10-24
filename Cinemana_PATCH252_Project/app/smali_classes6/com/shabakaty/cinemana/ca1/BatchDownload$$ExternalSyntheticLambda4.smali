.class public final synthetic Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda4;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda4;->f$2:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->lambda$toastSafe$0(Landroid/content/Context;Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
