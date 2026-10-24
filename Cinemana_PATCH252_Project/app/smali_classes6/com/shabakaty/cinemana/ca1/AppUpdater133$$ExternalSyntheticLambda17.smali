.class public final synthetic Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/File;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda17;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda17;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda17;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda17;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->lambda$showInstallFailure$16(Ljava/lang/Object;Ljava/io/File;Ljava/lang/Object;)V

    return-void
.end method
