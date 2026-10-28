.class Lcom/shabakaty/cinemana/local/LocalRuntime$4$1;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime$4;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$4;

.field final synthetic val$setting:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalRuntime$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$4;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4$1;->val$setting:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4$1;->val$setting:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4$1;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    const-string v1, "settings"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method
