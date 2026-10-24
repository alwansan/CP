.class Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$12;
.super Ljava/lang/Object;
.source "SequentialSubtitleManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addSettingsButton(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/Runnable;

.field final synthetic val$dialogRef:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 505
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$12;->val$dialogRef:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$12;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 507
    const-string p1, "onClick"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 508
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$12;->val$dialogRef:[Ljava/lang/Object;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$12;->val$dialogRef:[Ljava/lang/Object;

    aget-object p1, p1, p2

    const-string p3, "dismiss"

    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$2100()[Ljava/lang/Class;

    move-result-object v0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, v0, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$2200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 509
    :catchall_0
    move-exception p1

    :cond_0
    :goto_0
    nop

    .line 510
    iget-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$12;->val$action:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 512
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
