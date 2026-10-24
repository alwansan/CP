.class public Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
.super Ljava/lang/Object;
.source "FrescoSystrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/systrace/FrescoSystrace$NoOpArgsBuilder;,
        Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$NoOpArgsBuilder;

    .line 2
    invoke-direct {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace$NoOpArgsBuilder;-><init>()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->a:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->a:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->a:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/facebook/imagepipeline/systrace/DefaultFrescoSystrace;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/systrace/DefaultFrescoSystrace;-><init>()V

    sput-object v1, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->a:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->a:Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->a()Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method
