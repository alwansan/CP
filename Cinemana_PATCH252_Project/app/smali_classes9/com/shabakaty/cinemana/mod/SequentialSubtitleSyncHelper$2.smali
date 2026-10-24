.class Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$2;
.super Ljava/lang/Object;
.source "SequentialSubtitleSyncHelper.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->bindStep(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$editor:Ljava/lang/Object;

.field final synthetic val$step:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$2;->val$context:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$2;->val$editor:Ljava/lang/Object;

    iput p3, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$2;->val$step:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 166
    const-string p1, "onClick"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$2;->val$context:Ljava/lang/Object;

    iget-object p2, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$2;->val$editor:Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->access$000(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    iget-object p1, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$2;->val$context:Ljava/lang/Object;

    invoke-static {}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->getSequentialTenths()I

    move-result p2

    iget p3, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$2;->val$step:I

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->saveSequential(Ljava/lang/Object;I)V

    .line 169
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$2;->val$editor:Ljava/lang/Object;

    const-string p2, "setText"

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->getSequentialTenths()I

    move-result v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->access$100(I)Ljava/lang/String;

    move-result-object v1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v1, p3, v2

    invoke-static {p1, p2, v0, p3}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "Could not update sequential sync value"

    invoke-static {p2, p1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
