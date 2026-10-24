.class public final Lcom/facebook/common/internal/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/internal/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

.field public c:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/common/internal/Objects$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    .line 3
    invoke-direct {p2}, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->b:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    .line 5
    iput-object p2, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->c:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    .line 6
    iput-object p1, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    return-object p0
.end method

.method public b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    .line 2
    invoke-direct {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->c:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->c:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->c:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    .line 4
    iput-object p2, v0, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->b:Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, v0, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->b:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    iget-object v1, v1, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->c:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    iget-object v3, v1, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->b:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, v1, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 8
    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :goto_1
    iget-object v1, v1, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->c:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    const-string v2, ", "

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
