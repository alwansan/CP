.class public Landroidx/databinding/e$a;
.super Landroidx/databinding/c$a;
.source "PropertyChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/c$a<",
        "Landroidx/databinding/d$a;",
        "Landroidx/databinding/d;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/databinding/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/databinding/d$a;

    check-cast p2, Landroidx/databinding/d;

    check-cast p4, Ljava/lang/Void;

    .line 2
    invoke-virtual {p1, p2, p3}, Landroidx/databinding/d$a;->b(Landroidx/databinding/d;I)V

    return-void
.end method
