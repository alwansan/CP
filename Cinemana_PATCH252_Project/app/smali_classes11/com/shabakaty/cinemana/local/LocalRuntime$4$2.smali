.class Lcom/shabakaty/cinemana/local/LocalRuntime$4$2;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime$4;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$4;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalRuntime$4;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4$2;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$4;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4$2;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4$2;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4$2;->val$args:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->local(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
