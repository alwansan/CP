.class public final Lcom/shabakaty/downloader/ic2$a$i;
.super Lcom/shabakaty/downloader/af2;
.source "KClassImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ic2$a;-><init>(Lcom/shabakaty/downloader/ic2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/q20;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ic2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ic2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ic2$a$i;->r:Lcom/shabakaty/downloader/ic2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2$a$i;->r:Lcom/shabakaty/downloader/ic2;

    sget v1, Lcom/shabakaty/downloader/ic2;->v:I

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ic2;->r()Lcom/shabakaty/downloader/v20;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ic2$a$i;->r:Lcom/shabakaty/downloader/ic2;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/ic2;->u:Lcom/shabakaty/downloader/cq3$b;

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ic2$a;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/oc2$b;->a:Lcom/shabakaty/downloader/cq3$a;

    sget-object v2, Lcom/shabakaty/downloader/oc2$b;->b:[Lcom/shabakaty/downloader/jd2;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-moduleData>(...)"

    .line 8
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/shabakaty/downloader/mv3;

    .line 9
    iget-boolean v2, v0, Lcom/shabakaty/downloader/v20;->c:Z

    if-eqz v2, :cond_0

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/mv3;->a:Lcom/shabakaty/downloader/or0;

    .line 11
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/or0;->b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/mv3;->a:Lcom/shabakaty/downloader/or0;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->b:Lcom/shabakaty/downloader/nu2;

    .line 14
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/rb1;->a(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2$a$i;->r:Lcom/shabakaty/downloader/ic2;

    .line 16
    iget-object v1, v0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 17
    invoke-static {v1}, Lcom/shabakaty/downloader/yp3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/yp3;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 18
    :cond_1
    iget-object v1, v1, Lcom/shabakaty/downloader/yp3;->b:Lcom/shabakaty/downloader/be2;

    .line 19
    iget-object v1, v1, Lcom/shabakaty/downloader/be2;->a:Lcom/shabakaty/downloader/be2$a;

    :goto_1
    if-nez v1, :cond_2

    const/4 v2, -0x1

    goto :goto_2

    .line 20
    :cond_2
    sget-object v2, Lcom/shabakaty/downloader/ic2$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 21
    :pswitch_0
    new-instance v0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw v0

    .line 22
    :pswitch_1
    new-instance v2, Lcom/shabakaty/downloader/me2;

    const-string v3, "Unknown class: "

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 23
    iget-object v0, v0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (kind = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 25
    :pswitch_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 26
    iget-object v0, v0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    const-string v2, "This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It\'s not a Kotlin class or interface, so the reflection library has no idea what declarations does it have. Please use Java reflection to inspect this class: "

    .line 27
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :pswitch_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 30
    iget-object v0, v0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    const-string v2, "Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: "

    .line 31
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :pswitch_4
    new-instance v1, Lcom/shabakaty/downloader/me2;

    .line 34
    iget-object v0, v0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    const-string v2, "Unresolved class: "

    .line 35
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
