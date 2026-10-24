.class Lcom/cinemana/pro/logo/LogoFeature$4$1;
.super Ljava/lang/Object;
.source "LogoFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cinemana/pro/logo/LogoFeature$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cinemana/pro/logo/LogoFeature$4;

.field final synthetic val$picture:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cinemana/pro/logo/LogoFeature$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/cinemana/pro/logo/LogoFeature$4$1;->this$0:Lcom/cinemana/pro/logo/LogoFeature$4;

    iput-object p2, p0, Lcom/cinemana/pro/logo/LogoFeature$4$1;->val$picture:Ljava/lang/String;

    iput-object p3, p0, Lcom/cinemana/pro/logo/LogoFeature$4$1;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/cinemana/pro/logo/LogoFeature$4$1;->this$0:Lcom/cinemana/pro/logo/LogoFeature$4;

    iget-object v0, v0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cinemana/pro/logo/LogoFeature$4$1;->this$0:Lcom/cinemana/pro/logo/LogoFeature$4;

    iget-object v1, v1, Lcom/cinemana/pro/logo/LogoFeature$4;->val$requestIdentity:Ljava/lang/String;

    invoke-static {}, Lcom/cinemana/pro/logo/LogoFeature;->access$1300()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/cinemana/pro/logo/LogoFeature$4$1;->val$picture:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->access$1400(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cinemana/pro/logo/LogoFeature$4$1;->val$source:Ljava/lang/String;

    const-string v1, "draw_requested"

    invoke-static {v0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/cinemana/pro/logo/LogoFeature$4$1;->val$source:Ljava/lang/String;

    const-string v2, "draw_exception"

    invoke-static {v1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "draw failed"

    invoke-static {v1, v0}, Lcom/cinemana/pro/logo/LogoFeature;->access$1500(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_1
    :goto_1
    return-void
.end method
