.class Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;->this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;->val$result:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->capture(Ljava/lang/Object;)V

    return-void
.end method
