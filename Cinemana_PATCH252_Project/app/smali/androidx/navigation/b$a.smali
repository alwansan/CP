.class public final Landroidx/navigation/b$a;
.super Ljava/lang/Object;
.source "NavArgument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/dx2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/dx2<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/navigation/b$a;->b:Z

    .line 3
    iput-boolean v0, p0, Landroidx/navigation/b$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/navigation/b;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/navigation/b$a;->a:Lcom/shabakaty/downloader/dx2;

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Landroidx/navigation/b$a;->c:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/dx2;->b:Lcom/shabakaty/downloader/dx2;

    goto/16 :goto_2

    .line 5
    :cond_0
    instance-of v1, v0, [I

    if-eqz v1, :cond_1

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/dx2;->d:Lcom/shabakaty/downloader/dx2;

    goto/16 :goto_2

    .line 7
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/dx2;->e:Lcom/shabakaty/downloader/dx2;

    goto/16 :goto_2

    .line 9
    :cond_2
    instance-of v1, v0, [J

    if-eqz v1, :cond_3

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/dx2;->f:Lcom/shabakaty/downloader/dx2;

    goto/16 :goto_2

    .line 11
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/dx2;->g:Lcom/shabakaty/downloader/dx2;

    goto/16 :goto_2

    .line 13
    :cond_4
    instance-of v1, v0, [F

    if-eqz v1, :cond_5

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/dx2;->h:Lcom/shabakaty/downloader/dx2;

    goto/16 :goto_2

    .line 15
    :cond_5
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 16
    sget-object v0, Lcom/shabakaty/downloader/dx2;->i:Lcom/shabakaty/downloader/dx2;

    goto/16 :goto_2

    .line 17
    :cond_6
    instance-of v1, v0, [Z

    if-eqz v1, :cond_7

    .line 18
    sget-object v0, Lcom/shabakaty/downloader/dx2;->j:Lcom/shabakaty/downloader/dx2;

    goto/16 :goto_2

    .line 19
    :cond_7
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    if-nez v0, :cond_8

    goto/16 :goto_1

    .line 20
    :cond_8
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 21
    sget-object v0, Lcom/shabakaty/downloader/dx2;->l:Lcom/shabakaty/downloader/dx2;

    goto/16 :goto_2

    .line 22
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    const-class v1, Landroid/os/Parcelable;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 24
    new-instance v1, Lcom/shabakaty/downloader/dx2$m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/dx2$m;-><init>(Ljava/lang/Class;)V

    :goto_0
    move-object v0, v1

    goto/16 :goto_2

    .line 25
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_b

    const-class v1, Ljava/io/Serializable;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 27
    new-instance v1, Lcom/shabakaty/downloader/dx2$o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/dx2$o;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 28
    :cond_b
    instance-of v1, v0, Landroid/os/Parcelable;

    if-eqz v1, :cond_c

    .line 29
    new-instance v1, Lcom/shabakaty/downloader/dx2$n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/dx2$n;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 30
    :cond_c
    instance-of v1, v0, Ljava/lang/Enum;

    if-eqz v1, :cond_d

    .line 31
    new-instance v1, Lcom/shabakaty/downloader/dx2$l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/dx2$l;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 32
    :cond_d
    instance-of v1, v0, Ljava/io/Serializable;

    if-eqz v1, :cond_e

    .line 33
    new-instance v1, Lcom/shabakaty/downloader/dx2$p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/dx2$p;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 34
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Object of type "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported for navigation arguments."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_f
    :goto_1
    sget-object v0, Lcom/shabakaty/downloader/dx2;->k:Lcom/shabakaty/downloader/dx2;

    .line 36
    :goto_2
    iput-object v0, p0, Landroidx/navigation/b$a;->a:Lcom/shabakaty/downloader/dx2;

    .line 37
    :cond_10
    new-instance v0, Landroidx/navigation/b;

    iget-object v1, p0, Landroidx/navigation/b$a;->a:Lcom/shabakaty/downloader/dx2;

    iget-boolean v2, p0, Landroidx/navigation/b$a;->b:Z

    iget-object v3, p0, Landroidx/navigation/b$a;->c:Ljava/lang/Object;

    iget-boolean v4, p0, Landroidx/navigation/b$a;->d:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/navigation/b;-><init>(Lcom/shabakaty/downloader/dx2;ZLjava/lang/Object;Z)V

    return-object v0
.end method
