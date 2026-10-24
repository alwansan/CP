.class Lcom/cinemana/pro/logo/LogoFeature$3;
.super Ljava/lang/Object;
.source "LogoFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cinemana/pro/logo/LogoFeature;->observeActivity(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activityRef:Ljava/lang/ref/WeakReference;

.field final synthetic val$decor:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/cinemana/pro/logo/LogoFeature$3;->val$activityRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cinemana/pro/logo/LogoFeature$3;->val$decor:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/cinemana/pro/logo/LogoFeature$3;->val$activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cinemana/pro/logo/LogoFeature;->access$600()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_0

    goto :goto_2

    .line 74
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/cinemana/pro/logo/LogoFeature;->access$700(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 75
    :goto_0
    invoke-static {}, Lcom/cinemana/pro/logo/LogoFeature;->access$600()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/cinemana/pro/logo/LogoFeature$3;->val$decor:Ljava/lang/Object;

    const-string v1, "postDelayed"

    const-wide/16 v2, 0x640

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/cinemana/pro/logo/LogoFeature;->access$800(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 78
    :cond_1
    :goto_1
    return-void

    .line 73
    :cond_2
    :goto_2
    return-void
.end method
