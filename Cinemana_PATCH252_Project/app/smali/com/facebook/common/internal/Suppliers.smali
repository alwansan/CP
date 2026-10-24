.class public Lcom/facebook/common/internal/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# static fields
.field public static final a:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/common/internal/Suppliers$2;

    invoke-direct {v0}, Lcom/facebook/common/internal/Suppliers$2;-><init>()V

    .line 2
    new-instance v0, Lcom/facebook/common/internal/Suppliers$3;

    invoke-direct {v0}, Lcom/facebook/common/internal/Suppliers$3;-><init>()V

    sput-object v0, Lcom/facebook/common/internal/Suppliers;->a:Lcom/facebook/common/internal/Supplier;

    return-void
.end method
