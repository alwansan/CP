.class public final synthetic Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda12;->f$0:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda12;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda12;->f$0:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$$ExternalSyntheticLambda12;->f$2:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/AppUpdater133;->lambda$download$11([Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method
