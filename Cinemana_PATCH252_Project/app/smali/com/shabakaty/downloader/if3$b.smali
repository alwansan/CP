.class public final Lcom/shabakaty/downloader/if3$b;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Lcom/shabakaty/downloader/hx4$a;
.implements Lcom/shabakaty/downloader/dz1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/if3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/hx4$a<",
        "Lcom/shabakaty/downloader/if3;",
        "Lcom/shabakaty/downloader/jf3;",
        "Lcom/shabakaty/downloader/if3$b;",
        ">;",
        "Lcom/shabakaty/downloader/dz1$a<",
        "Lcom/shabakaty/downloader/if3$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/yv2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yv2;)V
    .locals 5

    .line 1
    const-class v0, Lcom/shabakaty/downloader/if3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/if3$b;->a:Lcom/shabakaty/downloader/yv2;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/qk4;->i:Lcom/shabakaty/downloader/o90$a;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid target class configuration for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    sget-object v3, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-virtual {p1, v1, v3, v0}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/qk4;->h:Lcom/shabakaty/downloader/o90$a;

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v1, v3, v0}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/util/Size;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/if3$b;->a:Lcom/shabakaty/downloader/yv2;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/dz1;->d:Lcom/shabakaty/downloader/o90$a;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-virtual {v0, v1, v2, p1}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public b()Lcom/shabakaty/downloader/wv2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/if3$b;->a:Lcom/shabakaty/downloader/yv2;

    return-object v0
.end method

.method public bridge synthetic c()Lcom/shabakaty/downloader/hx4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/if3$b;->e()Lcom/shabakaty/downloader/jf3;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/if3$b;->a:Lcom/shabakaty/downloader/yv2;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/dz1;->c:Lcom/shabakaty/downloader/o90$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-virtual {v0, v1, v2, p1}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public e()Lcom/shabakaty/downloader/jf3;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jf3;

    iget-object v1, p0, Lcom/shabakaty/downloader/if3$b;->a:Lcom/shabakaty/downloader/yv2;

    invoke-static {v1}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/jf3;-><init>(Lcom/shabakaty/downloader/k83;)V

    return-object v0
.end method
